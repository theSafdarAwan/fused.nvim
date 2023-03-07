--- Description: Expose's function api's to load theme in multiple ways.
local M = {}

--- configuration for theme.
---@table Config
---@field flavour string name of the theme.
---@field italics boolean to enable or disable italic font.
---@field bg_transparent boolean to enable or disable transparent background.
---@field custom table of custom higlight groups.
---@field plugins_integration table of plugin names (name = boolean)
local default_config = {
	flavour = "catppuccin",
	italics = true,
	bg_transparent = false,
	custom = {},
	plugins_integration = {
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

--- colors table for theme
local colors = {}
--- options like italics, bg_transparent, etc.
local opts = {}

--- Loads the theme.
---@param user_configuration table|nil configuration for theme.
M.setup = function(user_configuration)
	--- merge default_config and user_configuration
	local config = vim.tbl_extend("force", default_config, user_configuration or {})
	config.plugins_integration =
		vim.tbl_extend("force", default_config.plugins_integration, config.plugins_integration or {})

	-- theme name
	local flavour = config["flavour"]
	colors = require("fused.pallets." .. flavour).pallete
	-- set the background to transparent
	opts.bg_transparent = config.bg_transparent
	-- italic font config
	opts.italics = config.italics
	require("fused.utils").export_opts(opts)

	-- plugins table to load
	local plugins = config.plugins_integration

	-- set normal highlights
	require("fused.groups").load_builtin_hl(colors)

	-- load highlights for the plugins
	if user_configuration and user_configuration.plugins_integration then
		require("fused.groups").load_plugins_hl(plugins, flavour)
	elseif user_configuration and not user_configuration.plugins_integration then
		return
	end

	-- set highlights for custom groups set by user
	if config.custom then
		local hl = require("fused.utils").set_hl
		-- local i = 1
		for k, v in pairs(config.custom) do
			-- TODO: work on the style thing
			-- check if the styles are available then set the styles
			-- if type(k.styles) == "string" then
			--     local st = require("fused.utils").style(k.styles)
			--     for _, st_name in pairs(st) do
			--         k[st_name] = true
			--     end
			--     table.remove(k.styles, i)
			--     hl(tostring(k), v)
			-- else
			-- hl(tostring(k), v)
			-- end
			-- i = 1 + i
			hl(tostring(k), v)
		end
	end
end

--- This lets you Load single plugin specified as parameter after the theme is loaded.
-- Can be used in plugin configuration to load plugin Highlight groups only when
-- plugin is loaded. Can act as a lazy loader.
---@param name string name of the plugin.
M.load_plugin = function(name)
	vim.schedule(function()
		require("fused.groups").load_plugins_hl({ [name] = {} }, colors)
	end)
end

return M
