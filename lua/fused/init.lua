-- TODO: add the previews

-- TODO: change the plugins names to the names of the plugins from todocomments todo-comments.nvim

-- TODO: add the option for adding the autocmds that are defined in after

-- TODO: work on the onedark and aquarium theme colors

-- TODO: add the markdown treesitter highlights
local M = {}

-- HACK:  add a key to the config so that auto loading colors for plugins is disabled
-- and only enabled when we lazy_load the config

local defaults = require("fused.utils").default_config

M.setup = function(tbl)
	if tbl then
		for k, _ in pairs(tbl) do
			if defaults[k] then
				require("fused.utils").set_theme(tbl)
				return
			end
		end
	else
		require("fused.utils").set_theme(defaults)
	end
end

M.lazy_load = function(name)
	require("fused.utils").load_plugin_hl(name)
end

M.load_theme = function()
	require("fused.utils").set_theme(defaults)
end

return M
