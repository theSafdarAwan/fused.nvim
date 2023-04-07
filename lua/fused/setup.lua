--- Loads theme
local M = {}

--- Configuration for theme.
---@table DEFAULT_CONFIG

-- TODO: add option like sidebars by tokyonight.nvim
-- TODO: add common options like making comments italics, etc.

local DEFAULT_CONFIG = {
	use = "tokyonight-storm",
	settings = {
		--- aliases to common highlight groups like comments, param, function, string, etc
		aliases = {
			comment = {},
		},
		--- custom highlights or highlights of plugins that aren't supported by fused.nvim
		---@param colors table
		custom_highlights = function(colors)
			return {}
		end,
		---@type table
		global = {
			---@type string global style for all flavours. Has less precedence then the {flavour}.style
			style = "slim",
			---@type boolean enable italics for theme.
			italics = true,
			---@type boolean set background to transparent
			background_transparent = false,
			---@type boolean use the theme colors for the terminal colors
			terminal_colors = true,
		},
		---@type table setting for individual theme flavour there are
		["tokyonight-storm"] = {
			---@type string style for flavour
			style = "slim",
			---@type table style for individual plugins.
			style_groups = {},
			--- override the default theme color pallete
			---@param colors table
			override_colors = function(colors)
				return {}
			end,
			--- override the default setting for a style if function should return a table
			---@param colors table
			override_style_highlights = function(colors)
				return {
					slim = {},
					bordered = {},
				}
			end,
			--- override the default highlights if function should return a table
			---@param colors table
			override_group_highlights = function(colors)
				return {
					["telescope.nvim"] = {},
					syntax = {},
					editor = {},
					lsp = {},
				}
			end,
		},
	},
	load_plugins = {
		harpoon = true,
		neogit = true,
		neorg = true,
		["nvim-cmp"] = true,
		["nvim-navic"] = true,
		["nvim-notify"] = true,
		["noice.nvim"] = true,
		["neo-minimap"] = true,
		["nvim-scrollbar"] = true,
		["nvim-treesitter"] = true,
		["diffview.nvim"] = true,
		["indent-blankline.nvim"] = true,
		["lspsaga.nvim"] = true,
		["nvim-web-devicons"] = true,
		["nvim-tree.lua"] = true,
		["telescope.nvim"] = true,
		["todo-comments.nvim"] = true,
		["trouble.nvim"] = true,
		["nvim-ts-rainbow2"] = true,
		["renamer.nvim"] = true,
	},
}

--- loads flavour
---@param user_configuration table|nil configuration for the flavour.
---@param _args table|nil arguments needed when loading theme using cmdline.
function M._setup(user_configuration, _args)
	local config = vim.tbl_deep_extend("force", DEFAULT_CONFIG, user_configuration or {})

	-- theme flavour module
	local flavour_mod = require("fused.pallets." .. config.use)
	-- theme flavour color pallet
	local colors = flavour_mod.pallet
	local flavour_settings = config.settings[config.use] or {} -- theme flavour setting
	-- global setting for all themes has less precedence then the flavour_settings
	local global_settings = config.settings.global

	-- override the default highlights
	local override_group_hl = flavour_settings.override_group_highlights
	if type(override_group_hl) == "function" then
		override_group_hl = override_group_hl(colors)
	end

	-- override the default style's
	local override_style = flavour_settings.override_style_highlights
	if type(override_style) == "function" then
		override_style = override_style(colors)
	end

	-- polish the theme
	local polish = flavour_mod.polish and flavour_mod.polish(colors) or {}

	local opts = {}
	opts.polished = (function()
		-- global or local style to be applied to plugins that are not located in style_groups
		local flavour_style = flavour_settings.style or global_settings.style
		-- plugins style information
		local style_groups = flavour_settings.style_groups
		-- flavour default styles
		local flavour_default_styles = flavour_mod.style or {}
		-- styled plugins table
		local styled_plugins = {}
		-- override the default setting for styles
		if type(style_groups) == "string" then
			styled_plugins = flavour_default_styles(colors)[style_groups] or {}
			styled_plugins =
				vim.tbl_deep_extend("force", styled_plugins, override_style[style_groups] or {})
		else
			flavour_default_styles = flavour_default_styles(colors)
			for group_name, style_name in pairs(style_groups) do
				local group_style = flavour_default_styles[style_name] or {}
				local plugin = group_style[group_name] or {}
				-- override the default style with the user specified
				local _override_style = override_style[style_name] or {}
				plugin = vim.tbl_deep_extend("force", plugin, _override_style[group_name] or {})
				styled_plugins[group_name] = plugin
			end
			-- add the remaining plugins style highlight groups.
			for plugin_name, plugin_highlights in pairs(flavour_default_styles[flavour_style] or {}) do
				if not styled_plugins[plugin_name] then
					styled_plugins[plugin_name] = plugin_highlights
					local _override_style = override_style[global_settings.style] or {}
					styled_plugins[plugin_name] = vim.tbl_deep_extend(
						"force",
						styled_plugins[plugin_name],
						_override_style[plugin_name] or {}
					)
				end
			end
		end
		polish = vim.tbl_deep_extend("force", polish, styled_plugins)
		-- need to extend this only after the theme default config for highlight
		-- groups has been added to table then we can override highlights.
		return polish
	end)()
	opts.terminal_colors = flavour_settings.terminal_colors
		or global_settings.terminal_colors and flavour_settings.terminal_colors == nil
	opts.background_transparent = flavour_settings.background_transparent
		or global_settings.background_transparent and flavour_settings.background_transparent == nil
	opts.colors = colors
	-- export common opts table for easy access
	require("fused.utils").export_opts(opts)
	-- set normal highlights for editor, syntax, and lsp.
	require("fused.groups").load_builtin_hls()
	-- load highlights for the plugins
	if _args and _args.force_load_plugins or user_configuration and user_configuration.plugins then
		require("fused.groups").load_plugins_hl(config.load_plugins)
	end

	-- set highlights for custom groups set by user
	local custom_highlights = config.settings.custom_highlights
	if custom_highlights then
		if type(custom_highlights) == "function" then
			custom_highlights = custom_highlights(colors)
		end
		local set_hl = require("fused.utils").set_hl
		for hl_group_name, hl_opts in pairs(custom_highlights) do
			hl_group_name = tostring(hl_group_name)
			set_hl(hl_group_name, hl_opts)
		end
	end

	if _args and _args.execute_hooks then
		local hook_names = require("fused.utils").hooks_names
		for hook_name, _ in pairs(hook_names) do
			vim.cmd("do User " .. hook_name)
		end
	end
end

return M
