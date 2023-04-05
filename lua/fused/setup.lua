--- Loads theme
local M = {}

--- Configuration for theme flavour.
---@table Default_Config
-- TODO: remove these private keys and do something else rather then polluting
-- the config table with private information.
--
---@private force_load_plugins boolean to force load plugins when loading theme
--- using command line.
---@private execute_hooks boolean to execute hooks. When theme flavour was changed after
--- the startup.
--- This can be used by user to reload modules or configs like status line, etc.

local DEFAULT_CONFIG = {
	use = "tokyonight-storm",
	settings = {
		---@type table|function if function then should return a table
		custom_hl = function(colors)
			return {}
		end,
		---@type table there are four options available for setting globally.
		global = {
			---@type string|table global style for all flavours. Has less precedence
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
			---@type function|table override the default highlights if function should
			--- return a table
			---@param colors table|function colors table for the flavour
			override_hl = function(colors)
				return {
					["telescope.nvim"] = {},
					builtins = {
						syntax = {},
						editor = {},
						lsp = {},
					},
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
	force_load_plugins = false,
	execute_hooks = false,
}

--- loads flavour
---@param user_configuration table|nil configuration for the flavour.
function M.__setup(user_configuration)
	local config = vim.tbl_deep_extend("force", DEFAULT_CONFIG, user_configuration or {})
	local flavour_mod = require("fused.pallets." .. config.use)

	local colors = flavour_mod.pallet
	local flavour_settings = config.settings[config.use] or {}
	local global_settings = config.settings.global
	local style = flavour_settings.style or global_settings.style

	local override_hl = flavour_settings.override_hl or {}
	if type(override_hl) == "function" then
		override_hl = override_hl(colors)
	end

	local opts = {}
	opts.polish = function()
		local polished = flavour_mod.polish and flavour_mod.polish(colors) or {}
		polished = vim.tbl_deep_extend("force", polished, override_hl or {})
		local style_hl_groups = flavour_mod.style or {}
		if type(style) == "string" then
			style_hl_groups = style_hl_groups(colors)[style] or {}
		else
			style_hl_groups = style_hl_groups(colors)
			local styled_plugin_goups = {}
			for plugin, _style in pairs(style) do
				styled_plugin_goups[plugin] = (style_hl_groups[_style])[plugin] or {}
			end
		end
		polished = vim.tbl_deep_extend("force", polished, style_hl_groups or {})
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
	if config.force_load_plugins or user_configuration and user_configuration.plugins then
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

	if config.execute_hooks then
		local hook_names = require("fused.utils").hooks_names
		for hook_name, _ in pairs(hook_names) do
			vim.cmd("do User " .. hook_name)
		end
	end
end

return M
