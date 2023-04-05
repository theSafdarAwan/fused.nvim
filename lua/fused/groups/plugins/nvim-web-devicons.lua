local M = {}

M.load_hl = function(cp)
	return {
		DevIconDefault = { fg = cp.base09 },
		DevIconc = { fg = cp.base08 },
		DevIconcss = { fg = cp.base15 },
		DevIcondeb = { fg = cp.base08 },
		DevIconDockerfile = { fg = cp.cyan },
		DevIconhtml = { fg = cp.base09 },
		DevIconjpeg = { fg = cp.base09 },
		DevIconjpg = { fg = cp.base09 },
		DevIconjs = { fg = cp.base07 },
		DevIconkt = { fg = cp.base07 },
		DevIconlock = { fg = cp.base06 },
		DevIconlua = { fg = cp.base08 },
		DevIconmp3 = { fg = cp.base04 },
		DevIconmp4 = { fg = cp.base04 },
		DevIconout = { fg = cp.base04 },
		DevIconpng = { fg = cp.base13 },
		DevIconpy = { fg = cp.base08 },
		DevIcontoml = { fg = cp.base08 },
		DevIconts = { fg = cp.base11 },
		DevIconttf = { fg = cp.base04 },
		DevIconrb = { fg = cp.base14 },
		DevIconrpm = { fg = cp.base10 },
		DevIconvue = { fg = cp.base13 },
		DevIconwoff = { fg = cp.base04 },
		DevIconwoff2 = { fg = cp.base04 },
		DevIconxz = { fg = cp.base07 },
		DevIconzip = { fg = cp.base07 },
		DevIconZig = { fg = cp.base10 },
	}
end

return M
