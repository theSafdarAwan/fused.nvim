local M = {}

M.load_hl = function(cp)
	return {
		IndentBlanklineChar = { fg = cp.base01 },
		IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineSpaceCharBlankline = { link = "IndentBlanklineChar" },
		IndentBlanklineContextChar = { fg = cp.base02 },
		IndentBlanklineContextSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineContextStart = { bg = cp.base01 },
	}
end

return M
