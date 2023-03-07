--- Description: Exposedse's function api's to load theme in multiple ways.
local M = {}

---@table default_config default configuration for theme.
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
		-- TODO: add plugins full names using string key
		cmp = true,
		navic = true,
		notify = true,
		treesitter = true,
		treesitter_context = true,
		diffview = true,
		harpoon = true,
		neogit = true,
		indentblankline = true,
		lspsaga = true,
		neorg = true,
		devicons = true,
		nvimtree = true,
		telescope = true,
		todocomments = true,
		trouble = true,
		tsrainbow = true,
		renamer = true,
	}, -- table of plugins with the boolean values to enable or disable plugin.
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
	require("fused.groups").load_normal_higlights(colors)

	local load_plugins = plugins == nil or plugins
	-- plugins set highlights for the plugins
	if load_plugins then
		require("fused.groups").load_plugins_hl(plugins, flavour)
	elseif not plugins then
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

--- Loads single plugin specified as parameter. After the theme is loaded you
-- can load plugin by passing plugin name as a parameter. Can be used in plugins
-- configuration to load plugin Highlight groups only when plugin is loaded. Can
-- act as a lazy loader.
---@param name string name of the plugin.
M.load_plugin = function(name)
	vim.schedule(function()
		require("fused.groups").load_plugins_hl({ [name] = {} }, colors)
	end)
end

return M
