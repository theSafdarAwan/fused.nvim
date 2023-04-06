--- Loads theme
local M = {}

--- Configuration for theme flavour.
---@table Default_Config

local DEFAULT_CONFIG = {
	use = "tokyonight-storm",
	settings = {
		---@type table|function if function then should return a table
		custom_hl = function(colors)
			return {}
		end,
		---@type table there are four options available for setting globally.
		global = {
			---@type string global style for all flavours. Has less precedence
			--- then the {flavour}.style
			style = "bordered",
			---@type boolean enable italics for theme.
			italics = true,
			---@type boolean set background to transparent
			background_transparent = false,
			---@type boolean use the theme colors for the terminal colors
			terminal_colors = true,
		},
		---@type table setting for individual theme flavour there are
		["tokyonight-storm"] = {
			---@type string|table style string for flavour or table with
			--- individual plugin style.
			style = "slim",
			---@type table|function override the default setting for a style if
			--function should return a table
			---@param colors table current flavour colors table
			override_style = function(colors)
				return {
					slim = {},
					bordered = {},
				}
			end,
			---@type function|table override the default highlights if function should
			--- return a table
			---@param colors table|function colors table for the flavour
			override_hl = function(colors)
				return {
					["telescope.nvim"] = {},
					syntax = {},
					editor = {},
					lsp = {},
				}
			end,
		},
	},
	plugins = {
		harpoon = true,
		neogit = true,
		neorg = true,
		["nvim-cmp"] = true,
		["nvim-navic"] = true,
		["nvim-notify"] = true,
		["noice.nvim"] = true,
		["neo-minimap"] = true,
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
	local flavour_mod = require("fused.pallets." .. config.use)

	local colors = flavour_mod.pallet
	local flavour_settings = config.settings[config.use] or {}
	local global_settings = config.settings.global

	local override_hl = flavour_settings.override_hl or {}
	if type(override_hl) == "function" then
		override_hl = override_hl(colors)
	end

	local opts = {}
	opts.polish = function()
		local polished = flavour_mod.polish and flavour_mod.polish(colors) or {}
		local style = flavour_settings.style or global_settings.style
		-- style the plugins
		local flavour_styles = flavour_mod.style or {}
		local flavour_styled_plugins = {}
		local override_style = flavour_settings.override_style or {}
		if type(override_style) == "function" then
			override_style = override_style(colors)
		end
		if type(style) == "string" then
			flavour_styled_plugins = flavour_styles(colors)[style] or {}
			flavour_styled_plugins =
				vim.tbl_deep_extend("force", flavour_styled_plugins, override_style[style] or {})
		else
			flavour_styles = flavour_styles(colors)
			for plugin_name, style_name in pairs(style) do
				local _plugin_style = flavour_styles[style_name] or {}
				local plugin = _plugin_style[plugin_name] or {}
				local override_plugin = override_style[style_name]
				plugin = vim.tbl_deep_extend(
					"force",
					plugin,
					override_plugin and override_plugin[plugin_name] or {}
				)
				flavour_styled_plugins[plugin_name] = plugin
			end
			-- add the remaining plugins style highlight groups.
			local _global_styled_plugins = flavour_styles[global_settings.style] or {}
			for group, hl_tbl in pairs(_global_styled_plugins) do
				if not flavour_styled_plugins[group] then
					flavour_styled_plugins[group] = _global_styled_plugins[group]
				end
			end
		end
		polished = vim.tbl_deep_extend("force", polished, flavour_styled_plugins)
		-- need to extend this only after the theme default config for highlight
		-- groups has been added to table then we can override highlights.
		polished = vim.tbl_deep_extend("force", polished, override_hl or {})
		return polished
	end
	opts.terminal_colors = flavour_settings.terminal_colors
		or global_settings.terminal_colors and flavour_settings.terminal_colors == nil
	opts.background_transparent = flavour_settings.background_transparent
		or global_settings.background_transparent and flavour_settings.background_transparent == nil
	opts.colors = colors
	-- export common opts table for easy access
	require("fused.utils").export_opts(opts)

	-- set normal highlights for editor, syntax, and lsp.
	require("fused.groups").load_builtins_hl()
	-- load highlights for the plugins
	if _args and _args.force_load_plugins or user_configuration and user_configuration.plugins then
		require("fused.groups").load_plugins_hl(config.plugins)
	end

	-- set highlights for custom groups set by user
	local custom_hl = config.settings.custom_hl
	if custom_hl then
		if type(custom_hl) == "function" then
			custom_hl = custom_hl(opts.colors)
		end
		local hl = require("fused.utils").set_hl
		for hl_group_name, hl_opts in pairs(custom_hl) do
			hl_group_name = tostring(hl_group_name)
			if hl_opts.styles then
				local styles = hl_opts.styles
				styles = require("fused.utils").format_styles(styles)
				hl_opts = vim.tbl_extend("force", hl_opts, styles)
				hl_opts.styles = nil
			end
			hl(hl_group_name, hl_opts)
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
