local M = {}

M.load_hl = function(cp)
	return {
		TSRainbowRed = { fg = cp.base09 },
		TSRainbowBlue = { fg = cp.base12 },
		TSRainbowCyan = { fg = cp.base07 },
		TSRainbowGreen = { fg = cp.base15 },
		TSRainbowOrange = { fg = cp.base16 },
		TSRainbowViolet = { fg = cp.base11 },
		TSRainbowYellow = { fg = cp.base08 },
	}
end

return M
