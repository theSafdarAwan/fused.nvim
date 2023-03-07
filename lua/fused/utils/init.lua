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

--- Replaces the . char in plugin name with -
---@param name string plugin name to format
---@return string formatted plugin name.
M.format_plugin_name = function(name)
	local replacable_chars_idx_tbl = {}
	local pattern_last_idx = replacable_chars_idx_tbl[#replacable_chars_idx_tbl] or 1
	while true do
		local pattern_idx = string.find(name, ".", pattern_last_idx, true)
		if not pattern_idx then
			break
		end
		table.insert(replacable_chars_idx_tbl, pattern_idx)
		pattern_last_idx = replacable_chars_idx_tbl[#replacable_chars_idx_tbl] + 1
	end
	for _, pos in ipairs(replacable_chars_idx_tbl) do
		local str_strt = string.sub(name, 1, pos - 1)
		local str_finish = string.sub(name, pos + 1, -1)
		name = str_strt .. "-" .. str_finish
	end
	return name
end

return M
