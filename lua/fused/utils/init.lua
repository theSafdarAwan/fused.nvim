--- Description: loads the theme highlight groups.
local M = {}

---@table default_config default configuration for theme.
---@field flavour string name of the theme.
---@field italics boolean to enable or disable italic font.
---@field bg_transparent boolean to enable or disable transparent background.
---@field custom table of custom higlight groups.
---@field plugins_integration table of plugin names (name = boolean)
M.default_config = {
	flavour = "catppuccin",
	italics = true,
	bg_transparent = false,
	custom = {},
	plugins_integration = {
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

--- loads theme based on configuration table passed.
---@param conf table of theme configuration.
M.set_theme = function(conf)
	-- maybe in future will accept multiple flavours
	local flavour = conf["flavour"] or M.default_config["flavour"]

	-- setting the pallete for the theme not a clean way but works
	M.pallete = require("fused.pallets." .. flavour).pallete

	-- set the background to transparent
	M.bg_transparent = conf.bg_transparent

	-- set the italics
	if conf.italics == false then
		M.italics = false
	else
		-- if no setting provided set to the default
		M.italics = M.default_config.italics
	end

	-- default plugins if not plugins table was provided
	local default_pluigns = M.default_config.plugins_integration

	-- @normal highlights set normal highlights
	require("fused.groups").set()

	-- @plugins set highlights for the plugins
	if conf.plugins_integration == true then
		require("fused.groups").load_plugins_hl(default_pluigns)
	elseif conf.plugins_integration == false then
		return
	elseif type(conf.plugins_integration) == "nil" then
		require("fused.groups").load_plugins_hl(default_pluigns)
	else
		-- create a copy of the default_plugins table and check if a plugin
		-- config was supplied from the user then delete that plugin from the
		-- stack if its value was false or nil
		local plugins_tbl = vim.deepcopy(M.default_config.plugins_integration)
		for k, v in pairs(conf.plugins_integration) do
			if not v then
				plugins_tbl[k] = nil
			end
		end
		require("fused.groups").load_plugins_hl(plugins_tbl)
	end

	-- set highlights for custom groups set by user
	if conf.custom then
		local hl = require("fused.utils.lib.higlighter").set_hl
		-- local i = 1
		for k, v in pairs(conf.custom) do
			-- TODO: work on the style thing
			-- check if the styles are available then set the styles
			-- if type(k.styles) == "string" then
			--     local st = require("fused.utils.higlighter").style(k.styles)
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
M.load_plugin_hl = function(name)
	vim.schedule(function()
		require("fused.groups").load_plugins_hl({ [name] = {} })
	end)
end

return M
