--- Description: Exposedse's function api's to load theme in multiple ways.

local M = {}

--- default configuration for the theme.
---@table defaults
local defaults = require("fused.utils").default_config

--- Loads the theme.
---@param user_configuration table|nil table of configuration for theme.
M.setup = function(user_configuration)
	if user_configuration then
		for k, _ in pairs(user_configuration) do
			if defaults[k] then
				require("fused.utils").set_theme(user_configuration)
				return
			end
		end
	else
		require("fused.utils").set_theme(defaults)
	end
end

--- Lazy Loads plugin highlight groups.
--- @param name string name of the plugin.
M.lazy_load = function(name)
	require("fused.utils").load_plugin_hl(name)
end

-- TODO: remove this junk and clean this module
M.load_theme = function()
	require("fused.utils").set_theme(defaults)
end

return M
