--- Loads theme
local M = {}
--- Configuration for theme.
---@table Default_Config
---@field theme string name of the theme theme.
---@field settings table With theme name as key.
---@field italics boolean to enable or disable italic font.
---@field background_transparent boolean to enable or disable transparent background.
---@field terminal_colors boolean to enable terminal colors highlights.
---@field custom table|function returns table of custom highlight groups.
---@field plugins table of plugin names (name = boolean) .Accepts full
-- names of the plugins. If plugin name includes characters like `.` or `-` then
-- use the string key like `["nvim-tree"] = true`.
---@private force_load_plugins boolean to force load plugins when loading theme
--- using command line.
---@private execute_hooks boolean to execute hooks. When theme was changed after
--- the startup.
--- This can be used by user to reload modules or configs like status line, etc.
local default_config = {
	theme = "tokyonight-storm",
	settings = {
		["tokyonight-storm"] = {
			styles = {
				["telescope.nvim"] = "minimal",
			},
			hl_override = {},
		},
	},
	italics = true,
	terminal_colors = true,
	background_transparent = false,
	custom = {},
	plugins = {
		harpoon = true,
		neogit = true,
		neorg = true,
		["nvim-cmp"] = true,
		["nvim-navic"] = true,
		["nvim-notify"] = true,
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

--- loads theme
---@param user_configuration table|nil configuration for the theme.
function M.__setup(user_configuration)
	--- to export the opts like background_transparent, italics, etc.
	local opts = {}

	--- merge default_config and user_configuration
	local config = vim.tbl_deep_extend("force", default_config, user_configuration or {})

	local theme = require("fused.pallets." .. config.theme)
	-- current theme theme settings
	local theme_settings = config.settings[config.theme] or {}
	-- Export opts for latter use
	opts.colors = theme.pallet -- theme colors
	opts.background_transparent = config.background_transparent -- transparent background opt
	opts.italics = config.italics -- italic opt
	opts.terminal_colors = config.terminal_colors -- enable terminal colors
	-- TODO: implement styles for different plugins
	opts.styles = theme_settings.styles or {} -- get the styles for plugins
	-- polish the highlights for themes, this includes user overridden highlights
	-- and the themes.polish.
	local override_hl_groups = theme_settings.hl_override or {}
	-- TODO: this is wrong
	if theme.polish then
		opts.polish = function()
			local polished = theme.polish()
			for group_name, group_val in pairs(override_hl_groups) do
				polished[group_name] = vim.tbl_deep_extend("force", polished[group_name], group_val)
			end
			return polished
		end
	else
		opts.polish = function()
			local polished = {}
			for group_name, group_val in pairs(config.settings[config.theme]) do
				polished[group_name] = vim.tbl_deep_extend("force", polished[group_name], group_val)
			end
			return polished
		end
	end
	-- export the opts to the utils module for later easy access and use.
	require("fused.utils").export_opts(opts)

	-- set normal highlights
	require("fused.groups").load_builtin_hl()

	-- load highlights for the plugins
	if config.force_load_plugins or user_configuration and user_configuration.plugins then
		require("fused.groups").load_plugins_hl(config.plugins)
	end

	-- set highlights for custom groups set by user
	if config.custom then
		local hl = require("fused.utils").set_hl
		for hl_group_name, hl_opts in pairs(config.custom) do
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
