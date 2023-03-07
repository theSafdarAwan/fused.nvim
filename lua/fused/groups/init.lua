--- Loads highlight groups.
local M = {}

local hl = require("fused.utils").set_hl

--- loads higlights for editor builtin highlight groups including editor, syntax and lsp
---@param colors table theme colors.
M.load_normal_higlights = function(colors)
	local hls = {}
	hls = vim.tbl_extend("force", hls, require("fused.groups.editor").get_hl_groups(colors))
	hls = vim.tbl_extend("force", hls, require("fused.groups.syntax").get_hl_groups(colors))

	hls = vim.tbl_extend("force", hls, require("fused.groups.lsp").get_hl_groups(colors))
	for hl_name, hl_val in pairs(hls) do
		hl(tostring(hl_name), hl_val)
	end
end

--- loads higlight for the editor plugins highlight groups.
---@param plugins_tbl table plugins table to load group highlights for.
---@param colors table theme colors.
M.load_plugins_hl = function(plugins_tbl, colors)
	local plugins_hl_tbls = {}
	for k, _ in pairs(plugins_tbl) do
		local hl_tbl = require("fused.groups.plugins." .. k).get_hl_groups(colors)
		plugins_hl_tbls = vim.tbl_extend("force", plugins_hl_tbls, hl_tbl)
	end

	for hl_name, hl_val in pairs(plugins_hl_tbls) do
		hl(tostring(hl_name), hl_val)
	end
end
return M
