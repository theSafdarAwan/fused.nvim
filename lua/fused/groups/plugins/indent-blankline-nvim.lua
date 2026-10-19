local M = {}

M.get_hl_groups = function(cp)
	return {
		-- indent-blankline v3 (`require("ibl")`)
		IblIndent = { fg = cp.base03 },
		IblWhitespace = { link = "IblIndent" },
		IblScope = { fg = cp.base04 },
		-- indent-blankline v2
		IndentBlanklineChar = { fg = cp.base03 },
		IndentBlanklineSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineSpaceCharBlankline = { link = "IndentBlanklineChar" },
		IndentBlanklineContextChar = { fg = cp.base04 },
		IndentBlanklineContextSpaceChar = { link = "IndentBlanklineChar" },
		IndentBlanklineContextStart = { bg = cp.base03 },
	}
end

return M
