--- Expose's function api's to load theme in multiple ways.
local M = {}

--- the configuration given to `setup()`, kept so `:colorscheme fused-<flavour>` uses it.
local user_config = {}

--- Loads the flavour using the stored configuration. Does not reset the existing highlights,
--- use `colorscheme()` (or `:colorscheme fused-<flavour>`) for that.
---@param flavour string|nil flavour to load, defaults to the one from `setup()`.
---@param defaults table|nil options used when `setup()` did not set them.
M.load = function(flavour, defaults)
	local config = vim.tbl_deep_extend("force", defaults or {}, user_config)
	if flavour then
		config.flavour = flavour
	end
	local loaded = require("fused.setup").__setup(config)
	if loaded then
		vim.g.colors_name = "fused-" .. loaded
	end
end

--- Resets the highlights and loads the flavour like a normal colorscheme does. This is what
--- the files in `colors/` call, so your `setup()` options also apply to `:colorscheme`.
---@param flavour string|nil flavour to load, defaults to the one from `setup()`.
---@param defaults table|nil options used when `setup()` did not set them.
M.colorscheme = function(flavour, defaults)
	vim.g.colors_name = nil
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.o.background = "dark"
	M.load(flavour, defaults or { execute_hooks = true })
end

--- setup function. Stores the configuration and applies the theme, pass `apply = false` to
--- only store it and let `:colorscheme fused-<flavour>` apply it.
---@param user_configuration table|nil configuration for theme.
M.setup = function(user_configuration)
	user_config = user_configuration or {}
	if user_config.apply == false then
		return
	end
	M.colorscheme(nil, { execute_hooks = false })
end

--- This function lets you load single plugin specified as parameter after the theme
--- is loaded. After setting `plugins = false` in the `user_configuration` this can be
--- used in plugin configuration to load plugin highlight groups only when plugin is loaded.
--- Can act as a lazy loader. Decrease startup loading time. It is safe to call it before the
--- theme was loaded: the plugin is remembered and styled when the theme loads.
---@param name string name of the plugin.
M.load_plugin = function(name)
	require("fused.utils").requested_plugins[name] = true
	-- need to schedule it so it loads the highlights after all the theme modules
	-- have been loaded.
	vim.schedule(function()
		if require("fused.utils").colors then
			require("fused.groups").load_plugins_hl({ [name] = true })
		end
	end)
end

--- Allows you to add hooks which execute on theme flavour change by command line or if you use
--- telescope to change theme flavour. This lets you reload config.
---@param hooks table `{ foo = function() end }`. Hook function will be executed on theme
--- flavour change.
M.add_hooks = function(hooks)
	require("fused.utils").__add_hooks(hooks)
end

--- The configuration given to `setup()`.
---@return table
M.get_config = function()
	return vim.deepcopy(user_config)
end

return M
