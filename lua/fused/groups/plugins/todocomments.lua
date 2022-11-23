local M = {}

M.load_hl = function(hl, cp)
	hl("@todocomment.error", { fg = cp.err })
	hl("@todocomment.warn", { fg = cp.dyellow })
	hl("@todocomment.info", { fg = cp.search })
	hl("@todocomment.hint", { fg = cp.sky_blue })
	hl("@todocomment.default", { fg = cp.search })
end
return M
