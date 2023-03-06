local M = {}

local hl = require("fused.utils").set_hl
local cp = require("fused").pallete

M.set = function()
	local hls = {}
	hls = vim.tbl_extend("force", hls, require("fused.groups.editor").get_hl_groups(cp))
	hls = vim.tbl_extend("force", hls, require("fused.groups.syntax").get_hl_groups(cp))

	hls = vim.tbl_extend("force", hls, require("fused.groups.lsp").get_hl_groups(cp))
	for hl_name, hl_val in pairs(hls) do
		hl(tostring(hl_name), hl_val)
	end
end

M.load_plugins_hl = function(plugins_tbl)
	local plugins_hl_tbls = {}
	for k, _ in pairs(plugins_tbl) do
		local hl_tbl = require("fused.groups.plugins." .. k).get_hl_groups(cp)
		plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, hl_tbl)
	end

	for hl_name, hl_val in pairs(plugins_hl_tbls) do
		hl(tostring(hl_name), hl_val)
	end
end
return M
