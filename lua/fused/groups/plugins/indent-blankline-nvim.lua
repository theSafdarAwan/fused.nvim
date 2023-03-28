local M = {}

M.get_hl_groups = function(cp)
	return {
		IndentBlanklineChar = { fg = cp.base03 },
		IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineSpaceCharBlankline = { link = "IndentBlanklineChar" },
		IndentBlanklineContextChar = { fg = cp.base04 },
		IndentBlanklineContextSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineContextStart = { bg = cp.base05 },
	}
end

return M
