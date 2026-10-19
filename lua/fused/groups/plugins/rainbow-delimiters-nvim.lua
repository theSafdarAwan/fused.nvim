local M = {}

M.get_hl_groups = function(cp)
	return {
		RainbowDelimiterRed = { fg = cp.base11 },
		RainbowDelimiterYellow = { fg = cp.base09 },
		RainbowDelimiterBlue = { fg = cp.base17 },
		RainbowDelimiterOrange = { fg = cp.base12 },
		RainbowDelimiterGreen = { fg = cp.base15 },
		RainbowDelimiterViolet = { fg = cp.base14 },
		RainbowDelimiterCyan = { fg = cp.base10 },
	}
end

return M
