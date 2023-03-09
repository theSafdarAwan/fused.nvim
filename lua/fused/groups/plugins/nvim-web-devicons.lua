local M = {}

M.get_hl_groups = function(cp)
	return {
		DevIconDefault = { fg = cp.red },
		DevIconc = { fg = cp.property },
		DevIconcss = { fg = cp.variable },
		DevIcondeb = { fg = cp.property },
		DevIconDockerfile = { fg = cp.cyan },
		DevIconhtml = { fg = cp.err },
		DevIconjpeg = { fg = cp.light_pink },
		DevIconjpg = { fg = cp.light_pink },
		DevIconjs = { fg = cp.warn },
		DevIconkt = { fg = cp.warn },
		DevIconlock = { fg = cp.err_sev },
		DevIconlua = { fg = cp.property },
		DevIconmp3 = { fg = cp.base06 },
		DevIconmp4 = { fg = cp.base06 },
		DevIconout = { fg = cp.base06 },
		DevIconpng = { fg = cp.ts_purple },
		DevIconpy = { fg = cp.property },
		DevIcontoml = { fg = cp.property },
		DevIconts = { fg = cp.teal },
		DevIconttf = { fg = cp.base06 },
		DevIconrb = { fg = cp.method },
		DevIconrpm = { fg = cp.const },
		DevIconvue = { fg = cp.search },
		DevIconwoff = { fg = cp.base06 },
		DevIconwoff2 = { fg = cp.base06 },
		DevIconxz = { fg = cp.warn },
		DevIconzip = { fg = cp.warn },
		DevIconZig = { fg = cp.const },
	}
end

return M
