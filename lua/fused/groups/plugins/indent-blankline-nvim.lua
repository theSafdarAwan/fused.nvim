local M = {}

M.get_hl_groups = function(cp)
	return {
		IndentBlanklineChar = { fg = cp.cp4 },
		IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineSpaceCharBlankline = { link = "IndentBlanklineChar" },
		IndentBlanklineContextChar = { fg = cp.base05 },
		IndentBlanklineContextSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineContextStart = { bg = cp.base05 },
	}
end

return M
