--- Expose's function api's to load theme in multiple ways.
local M = {}

--- setup function to load the theme on startup.
---@param user_configuration table|nil configuration for theme.
M.setup = function(user_configuration)
	require("fused.setup").__setup(user_configuration)
end

--- This function lets you Load single plugin specified as parameter after the theme
-- is loaded. Can be used in plugin configuration to load plugin Highlight groups only
-- when plugin is loaded. Can act as a lazy loader. Decrease loading time.
---@param name string name of the plugin.
M.load_plugin = function(name)
	vim.schedule(function()
		require("fused.groups").load_plugins_hl({ [name] = {} })
	end)
end

--- allows you to add hook's which execute on theme change.
---@param hooks table `{ foo = function() end }`. Hook function will be executed on theme
--- change - when theme was set using the command line or using telescope theme picker. If
--- you want to - execute it on setup then set the `execute_hooks` in setup table to `true`.
M.add_hooks = function(hooks)
	require("fused.utils").__add_hooks(hooks)
end

return M
