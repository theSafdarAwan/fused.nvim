local M = {}

local hl = require("fused.utils.lib.higlighter").set_hl
local cp = require("fused.utils").pallete

M.set = function()
	local hls = {}
	hls = vim.tbl_extend("force", hls, require("fused.groups.editor").load_hl(cp))
	hls = vim.tbl_extend("force", hls, require("fused.groups.syntax").load_hl(cp))

	hls = vim.tbl_extend("force", hls, require("fused.groups.lsp").load_hl(cp))
	for hl_name, hl_val in pairs(hls) do
		hl(tostring(hl_name), hl_val)
	end
end

M.load_plugins_hl = function(plugins_tbl)
	local plugins_hl_tbls = {}
	for k, _ in pairs(plugins_tbl) do
		local hl_tbl = require("fused.groups.plugins." .. k).load_hl(cp)
		plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, hl_tbl)
	end

	for hl_name, hl_val in pairs(plugins_hl_tbls) do
		hl(tostring(hl_name), hl_val)
	end
end
return M
