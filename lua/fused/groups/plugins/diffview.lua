local M = {}

M.load_hl = function(cp)
	return {
		DiffviewNormal = { fg = cp.property, bg = cp.bg },
		-- like the > marker for folder
		DiffviewNonText = { fg = cp.white },
		-- current line hig ,
		DiffviewCursorLine = { bg = cp.bg_windows2 },

		DiffviewDiffDelete = { link = "DiffDelete" },
		-- folders names
		DiffviewFolderName = { fg = cp.white },
		DiffviewFolderSign = { fg = cp.white },
		DiffviewFilePanelFileName = { link = "DiffviewFolderName" },
		-- file path when using flattern dir tree option
		DiffviewFilePanelPath = { link = "DiffviewFolderName" },

		DiffviewStatusLine = { link = "StatusLine" },
		DiffviewStatusLineNC = { link = "StatusLineNC" },
		DiffviewEndOfBuffer = {}, -- end of the files buffer
		-- separator
		DiffviewWinSeparator = { fg = cp.border },

		DiffviewStatusUnknown = { fg = cp.red },

		-- panel titles
		DiffviewFilePanelTitle = { fg = cp.red },
		-- modified files sign in front of file
		DiffviewStatusModified = { fg = cp.red },
		-- for renamed files sign in front of file
		DiffviewStatusRenamed = { fg = cp.search },
		DiffviewStatusUntracked = { fg = cp.search },
		-- counter show after the titles
		DiffviewFilePanelCounter = { fg = cp.warn },
		-- root path title name
		DiffviewFilePanelRootPath = { fg = cp.light_pink },
		-- deletion and insertion counter after the file name
		DiffviewFilePanelDeletions = { link = "DiffDelete" },
		DiffviewFilePanelInsertions = { link = "DiffAdd" },

		-- new files
		DiffviewStatusAdded = { fg = cp.red },
		-- deleted fiels
		DiffviewStatusDeleted = { fg = cp.err },
		-- unmerged during the conflicts
		DiffviewStatusUnmerged = { fg = cp.warn },
		-- conflicts counter in front of the file
		DiffviewFilePanelConflicts = { fg = cp.red },

		DiffviewStatusCopied = { fg = cp.warn },

		-- hig =s the staged deleted content when diffin,
		DiffviewDiffAddAsDelete = { link = "DiffDelete" },
	}

	-- TODO: figure out these highlights
	-- local curse = { fg = cp.bg, bg = cp.white }
	-- hl("DiffviewStatusBroken", curse)
	-- hl("DiffviewStatusIgnored", curse)
	-- hl("DiffviewSignColumn", curse)
	-- hl("DiffviewPrimary", curse)
	-- hl("DiffviewDim1", curse)
	-- hl("DiffviewReference", curse)
	-- hl("DiffviewSecondary", curse)
	-- hl("DiffviewStatusTypeChange", curse)
end

return M
