local M = {}

M.get_hl_groups = function(cp)
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
