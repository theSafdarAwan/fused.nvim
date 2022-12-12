local M = {}

M.load_hl = function(hl, cp)
	hl("DevIconDefault", { fg = cp.red })
	hl("DevIconc", { fg = cp.property })
	hl("DevIconcss", { fg = cp.variable })
	hl("DevIcondeb", { fg = cp.property })
	hl("DevIconDockerfile", { fg = cp.cyan })
	hl("DevIconhtml", { fg = cp.err })
	hl("DevIconjpeg", { fg = cp.light_pink })
	hl("DevIconjpg", { fg = cp.light_pink })
	hl("DevIconjs", { fg = cp.warn })
	hl("DevIconkt", { fg = cp.warn })
	hl("DevIconlock", { fg = cp.err_sev })
	hl("DevIconlua", { fg = cp.property })
	hl("DevIconmp3", { fg = cp.white })
	hl("DevIconmp4", { fg = cp.white })
	hl("DevIconout", { fg = cp.white })
	hl("DevIconpng", { fg = cp.ts_purple })
	hl("DevIconpy", { fg = cp.property })
	hl("DevIcontoml", { fg = cp.property })
	hl("DevIconts", { fg = cp.teal })
	hl("DevIconttf", { fg = cp.white })
	hl("DevIconrb", { fg = cp.method })
	hl("DevIconrpm", { fg = cp.const })
	hl("DevIconvue", { fg = cp.search })
	hl("DevIconwoff", { fg = cp.white })
	hl("DevIconwoff2", { fg = cp.white })
	hl("DevIconxz", { fg = cp.warn })
	hl("DevIconzip", { fg = cp.warn })
	hl("DevIconZig", { fg = cp.const })
end

return M
