-- TODO: add the previews
-- TODO: add the option for adding the autocmds that are defined in after
local M = {}

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

M.load_theme = function()
	require("fused.utils").set_theme(defaults)
end

return M
