local M = {}

M.get_hl_groups = function(cp)
	return {
		TSRainbowRed = { fg = cp.base11 },
		TSRainbowBlue = { fg = cp.base14 },
		TSRainbowCyan = { fg = cp.base09 },
		TSRainbowGreen = { fg = cp.base17 },
		TSRainbowOrange = { fg = cp.base18 },
		TSRainbowViolet = { fg = cp.base13 },
		TSRainbowYellow = { fg = cp.base10 },
	}
end

return M
