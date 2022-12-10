local M = {}

M.load_hl = function(hl, cp)
	hl("IndentBlanklineChar", { fg = cp.cp4 })
	hl("IndentBlanklineSpaceChar", { link = "IndentBlanklineChar" })
	hl("IndentBlanklineSpaceCharBlankline", { link = "IndentBlanklineChar" })
	hl("IndentBlanklineContextChar", { fg = cp.cp1 })
	hl("IndentBlanklineContextSpaceChar", { link = "IndentBlanklineChar" })
	hl("IndentBlanklineContextStart", { bg = cp.bg_context })
end

return M
