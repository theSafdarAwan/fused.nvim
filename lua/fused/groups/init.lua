local M = {}

local hl = require("fused.utils.lib.higlighter").set_hl
local cp = require("fused.utils").pallete

M.set = function()
	require("fused.groups.editor").load_hl(hl, cp)
	require("fused.groups.syntax").load_hl(hl, cp)

	require("fused.groups.lsp").load_hl(hl, cp)
end

M.set_plugins = function(plugins_tbl)
	for k, _ in pairs(plugins_tbl) do
		require("fused.groups.plugins." .. k).load_hl(hl, cp)
	end
end
return M
