local M = {}

M.get_hl_groups = function(cp)
	return {
		NeoMinimapBorder = { link = "FloatBorder" },
		NeoMinimapLineNr = { link = "LineNr" },
		NeoMinimapBackground = { link = "Normal" },
		NeoMinimapCursorLine = { link = "CursorLine" },
	}
end

return M
