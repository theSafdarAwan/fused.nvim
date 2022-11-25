local M = {}

local defaults = require("fused.utils").default_config

M.setup = function(tbl)
	if tbl then
		for k, _ in pairs(tbl) do
			if defaults[k] then
				require("fused.utils").set_theme(tbl)
				return
			else
				require("fused.utils").set_theme(defaults)
			end
		end
	end
end

M.load_theme = function()
	M.setup(defaults)
end

return M
