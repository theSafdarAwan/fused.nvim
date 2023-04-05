local M = {}

M.load_hl = function(cp)
	return {
		NeoMinimapBorder = { link = "FloatBorder" },
		NeoMinimapLineNr = { link = "LineNr" },
		NeoMinimapBackground = { link = "Normal" },
		NeoMinimapCursorLine = { link = "CursorLine" },
	}
end

return M
