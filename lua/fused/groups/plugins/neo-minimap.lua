local M = {}

M.get_hl_groups = function(cp)
	return {
		NeoMinimapBorder = { link = "FloatBorder" },
		NeoMinimapBackground = { link = "Normal" },
		NeoMinimapCursorLine = { link = "CursorLine" },
	}
end

return M
