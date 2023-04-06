--- Expose's function api's to load theme in multiple ways.
local M = {}

--- setup function to load the theme.
---@param user_configuration table|nil configuration for theme.
---@private _args table configuration for theme.
M.setup = function(user_configuration)
	require("fused.setup")._setup(user_configuration)
end

--- setup function used by the colors/* theme modules to force load theme.
---@param theme_config table theme configuration
---@param _args table includes options for force reloading theme, includes reload
-- hooks.
M.__setup = function(theme_config, _args)
	require("fused.setup")._setup(theme_config, _args)
end

-- TODO: remove the custom highlight queries for the punctuations and use
-- @punctuation.lang instead

--- This function lets you load single plugin specified as parameter after the theme
--- is loaded. After setting `plugins = nil|false` in the `user_configuration` this can be
--- used in plugin configuration to load plugin highlight groups only when plugin is loaded.
--- Can act as a lazy loader. Decrease startup loading time.
---@param name string name of the plugin.
M.load_plugin = function(name)
	-- need to schedule it so it loads the highlights after all the theme modules
	-- have been loaded.
	vim.schedule(function()
		require("fused.groups").load_plugins_hl({ [name] = true })
	end)
end

--- Allows you to add hooks which execute on theme flavour change by command line orif you use
--- telescope to change theme flavour. This lets you reload config.
---@param hooks table `{ foo = function() end }`. Hook function will be executed on theme
--- flavour change.
M.add_hooks = function(hooks)
	require("fused.utils").__add_hooks(hooks)
end

return M
