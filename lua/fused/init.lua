--- Description: Expose's function api's to load theme in multiple ways.
local M = {}

--- configuration for theme.
---@table Config
---@field flavour string name of the theme.
---@field italics boolean to enable or disable italic font.
---@field bg_transparent boolean to enable or disable transparent background.
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

--- options like italics, bg_transparent, etc.
local opts = {}

--- setup function to load the theme on startup.
---@param user_configuration table|nil configuration for theme.
M.setup = function(user_configuration)
	--- merge default_config and user_configuration
	local config = vim.tbl_extend("force", default_config, user_configuration or {})
	config.plugins = vim.tbl_extend("force", default_config.plugins, config.plugins or {})
	config.custom = user_configuration and vim.deepcopy(user_configuration.custom)

	local theme = require("fused.pallets." .. config["flavour"])
	-- theme colors
	local colors = theme.pallet
	-- set the background to transparent
	opts.bg_transparent = config.bg_transparent
	-- italic font config
	opts.italics = config.italics
	opts.colors = colors
	-- polish function to override some highlights
	if theme.polish then
		opts.polish = theme.polish
	else
		opts.polish = function()
			return {}
		end
	end
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
end

--- This function lets you Load single plugin specified as parameter after the theme
-- is loaded. Can be used in plugin configuration to load plugin Highlight groups only
-- when plugin is loaded. Can act as a lazy loader.
---@param name string name of the plugin.
M.load_plugin = function(name)
	vim.schedule(function()
		require("fused.groups").load_plugins_hl({ [name] = {} })
	end)
end

return M
