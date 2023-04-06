local M = {}

local api = vim.api
M.load_hl = function(cp)
	---@param type string
	local function get_diagnostic_fg(type)
		local diagnostic_hl = api.nvim_get_hl(0, { name = "DiagnosticSign" .. type })
		return diagnostic_hl.fg
	end
	---@param type string
	local function get_diff_fg(type)
		local diff_hl = api.nvim_get_hl(0, { name = "Diff" .. type })
		return diff_hl.fg
	end
	local bg = cp.popup_bg
	return {
		-- scrollbar
		ScrollbarHandle = { bg = bg },

		-- Diagnostics
		ScrollbarError = { fg = get_diagnostic_fg("Error"), bg = bg },
		ScrollbarWarn = { fg = get_diagnostic_fg("Warn"), bg = bg },
		ScrollbarHint = { fg = get_diagnostic_fg("Hint"), bg = bg },
		ScrollbarInfo = { fg = get_diagnostic_fg("Info"), bg = bg },

		ScrollbarHintHandle = { link = "ScrollbarHint" },
		ScrollbarInfoHandle = { link = "ScrollbarInfo" },
		ScrollbarWarnHandle = { link = "ScrollbarWarn" },
		ScrollbarErrorHandle = { link = "ScrollbarError" },

		-- Git
		ScrollbarGitAdd = { fg = get_diff_fg("Add"), bg = bg },
		ScrollbarGitChange = { fg = get_diff_fg("Change"), bg = bg },
		ScrollbarGitDelete = { fg = get_diff_fg("Delete"), bg = bg },

		ScrollbarGitAddHandle = { link = "ScrollbarGitAdd" },
		ScrollbarGitChangeHandle = { link = "ScrollbarGitChange" },
		ScrollbarGitDeleteHandle = { link = "ScrollbarGitDelete" },

		-- other stuff
		ScrollbarMisc = { bg = cp.base07 },
		ScrollbarMiscHandle = { link = "ScrollbarMisc" },
		ScrollbarCursor = { fg = cp.base04, bg = bg },
		ScrollbarCursorHandle = { link = "ScrollbarCursor" },

		ScrollbarSearch = { fg = api.nvim_get_hl(0, { name = "Search" }).fg, bg = bg },
		ScrollbarSearchHandle = { link = "ScrollbarSearch" },
	}
end

return M
