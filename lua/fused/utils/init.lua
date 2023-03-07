--- Adds Utility functions.
local vim = vim
local M = {}

--- Loads the highlight group.
---@param group string name of the highlight group to load.
---@param hls table opts for the highlight group.
M.set_hl = function(group, hls)
	vim.api.nvim_set_hl(0, group, hls)
end

--- Exports the opts which can be used outside of the module.
---@param opts table opts like bg_transparent, italics, etc.
M.export_opts = function(opts)
	for opt, val in pairs(opts) do
		M[opt] = val
	end
end

--- Converts styles from a string to a table and returns it.
---@return table of styles
M.style = function(str)
	local st = {}
	local styles_tbl = vim.split(str, ",", { plain = true, trimempty = true })
	for _, v in pairs(styles_tbl) do
		st[v] = true
	end
	return st
end

return M
