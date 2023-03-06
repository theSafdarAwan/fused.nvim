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

--- Loads the theme.
---@param user_configuration table|nil configuration for theme.
M.setup = function(user_configuration)
	--- merge default_config and user_configuration
	local config = vim.tbl_extend("force", default_config, user_configuration or {})
	config.plugins_integration =
		vim.tbl_extend("force", default_config.plugins_integration, config.plugins_integration or {})

	-- maybe in future will accept multiple flavours
	local flavour = config["flavour"]

	-- setting the pallete for the theme not a clean way but works
	M.pallete = require("fused.pallets." .. flavour).pallete

	-- set the background to transparent
	M.bg_transparent = config.bg_transparent

	-- set the italics
	if config.italics == false then
		M.italics = false
	else
		-- if no setting provided set to the default
		M.italics = config.italics
	end

	-- default plugins if not plugins table was provided
	local default_pluigns = config.plugins_integration

	-- @normal highlights set normal highlights
	require("fused.groups").set()

	-- @plugins set highlights for the plugins
	if config.plugins_integration == true then
		require("fused.groups").load_plugins_hl(default_pluigns)
	elseif config.plugins_integration == false then
		return
	elseif type(config.plugins_integration) == "nil" then
		require("fused.groups").load_plugins_hl(default_pluigns)
	else
		-- create a copy of the default_plugins table and check if a plugin
		-- config was supplied from the user then delete that plugin from the
		-- stack if its value was false or nil
		local plugins_tbl = vim.deepcopy(config.plugins_integration)
		for k, v in pairs(config.plugins_integration) do
			if not v then
				plugins_tbl[k] = nil
			end
		end
		require("fused.groups").load_plugins_hl(plugins_tbl)
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

--- Loads single plugin specified as parameter.
---@param name string name of the plugin.
M.lazy_load = function(name)
	vim.schedule(function()
		require("fused.groups").load_plugins_hl({ [name] = {} })
	end)
end

return M
