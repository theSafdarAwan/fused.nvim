local M = {}

M.get_hl_groups = function(cp)
	return {
		DevIconDefault = { fg = cp.base11 },
		DevIconc = { fg = cp.base10 },
		DevIconcss = { fg = cp.base17 },
		DevIcondeb = { fg = cp.base10 },
		DevIconDockerfile = { fg = cp.cyan },
		DevIconhtml = { fg = cp.base11 },
		DevIconjpeg = { fg = cp.base11 },
		DevIconjpg = { fg = cp.base11 },
		DevIconjs = { fg = cp.base09 },
		DevIconkt = { fg = cp.base09 },
		DevIconlock = { fg = cp.base08 },
		DevIconlua = { fg = cp.base10 },
		DevIconmp3 = { fg = cp.base06 },
		DevIconmp4 = { fg = cp.base06 },
		DevIconout = { fg = cp.base06 },
		DevIconpng = { fg = cp.base15 },
		DevIconpy = { fg = cp.base10 },
		DevIcontoml = { fg = cp.base10 },
		DevIconts = { fg = cp.base13 },
		DevIconttf = { fg = cp.base06 },
		DevIconrb = { fg = cp.base16 },
		DevIconrpm = { fg = cp.base12 },
		DevIconvue = { fg = cp.base15 },
		DevIconwoff = { fg = cp.base06 },
		DevIconwoff2 = { fg = cp.base06 },
		DevIconxz = { fg = cp.base09 },
		DevIconzip = { fg = cp.base09 },
		DevIconZig = { fg = cp.base12 },
	}
end

return M
