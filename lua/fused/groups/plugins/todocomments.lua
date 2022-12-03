local M = {}

M.load_hl = function(hl, cp)
	hl("@todocomment.error", { fg = cp.err })
	hl("@todocomment.warn", { fg = cp.orange })
	hl("@todocomment.info", { fg = cp.search })
	hl("@todocomment.hint", { fg = cp.variable })
	hl("@todocomment.default", { fg = cp.search })
end
return M
