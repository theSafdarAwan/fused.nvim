--- Loads theme
local M = {}
--- Configuration for theme.
---@table Default_Config
---@field flavour string name of the theme.
---@field override table|function should give a table of themes name as key name and table of
--- Highlight groups to override - to override plugin highlight add highlight in a table with
--- the plugin name as - `["name"] = {}` find name. Syntax or editor highlights then add in a
--- table called - `builtin = {}`.
---@field italics boolean to enable or disable italic font.
---@field bg_transparent boolean to enable or disable transparent background.
--- Which can be used by user to reload modules or configs like status line, etc.
---@field custom table|function returns table of custom higlight groups.
---@field plugins table of plugin names (name = boolean) .Accepts full
-- names of the plugins. If plugin name includes characters like `.` or `-` then
-- use the string key like (["nvim-tree"] = true).
local default_config = {
	flavour = "catppuccin-mocha",
	override = {
		["catppuccin-mocha"] = {},
		["catppuccin-dark"] = {},
		["ayu-mirage"] = {},
		["palenight-operator"] = {},
	},
	italics = true,
	bg_transparent = false,
	custom = {},
	execute_hooks = false,
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
		["nvim-ts-rainbow"] = true,
		["renamer.nvim"] = true,
	},
}

--- loads theme
---@param user_configuration table|nil configuration for the theme.
function M.__setup(user_configuration)
	--- to export the opts like bg_transparent, italics, etc.
	local opts = {}

	--- merge default_config and user_configuration
	local config = vim.tbl_deep_extend("force", default_config, user_configuration or {})

	local theme = require("fused.pallets." .. config["flavour"])
	-- theme colors
	local colors = theme.pallet
	-- transparent background opt
	opts.bg_transparent = config.bg_transparent
	-- italic opt
	opts.italics = config.italics
	opts.colors = colors
	-- override default highlight groups
	local override_hl_groups
	if type(config.override) == "function" then
		override_hl_groups = config.override()[config.flavour]
	else
		override_hl_groups = config.override[config.flavour]
	end
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
			for group_name, group_val in pairs(config.override[config.flavour]) do
				polished[group_name] = vim.tbl_deep_extend("force", polished[group_name], group_val)
			end
			return polished
		end
	end
	-- export the opts to the utils module for later easy access and use.
	require("fused.utils").export_opts(opts)

	-- plugins table to load
	local plugins = config.plugins

	-- set normal highlights
	require("fused.groups").load_builtin_hl()

	-- load highlights for the plugins
	if not user_configuration or user_configuration and not user_configuration.plugins then
		require("fused.groups").load_plugins_hl(plugins)
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

	-- execute hooks
	if not user_configuration or config.execute_hooks then
		local hook_names = require("fused.utils").hooks_names
		for hook_name, _ in pairs(hook_names) do
			vim.cmd("do User " .. hook_name)
		end
	end
end

return M
