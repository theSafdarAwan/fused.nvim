--- Description: Exposedse's function api's to load theme in multiple ways.

local M = {}

--- default configuration for the theme.
---@table defaults
local default_config = require("fused.utils").default_config

--- Loads the theme.
---@param user_configuration table|nil configuration for theme.
M.setup = function(user_configuration)
	--- merge default_config and user_configuration
	local config = vim.tbl_extend("force", default_config, user_configuration or {})
	config.plugins_integration =
		vim.tbl_extend("force", default_config.plugins_integration, config.plugins_integration or {})
	require("fused.utils").set_theme(config)
end

--- Can be used to lazy load plugins highlight groups with plugins configuration when
--  plugins get loaded.
---@param name string name of the plugin.
M.lazy_load = function(name)
	require("fused.utils").load_plugin_hl(name)
end

return M
