local M = {}

M.load_hl = function(cp)
	return {
		IndentBlanklineChar = { fg = cp.cp4 },
		IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineSpaceCharBlankline = { link = "IndentBlanklineChar" },
		IndentBlanklineContextChar = { fg = cp.cp1 },
		IndentBlanklineContextSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineContextStart = { bg = cp.bg_context },
	}
end

return M
