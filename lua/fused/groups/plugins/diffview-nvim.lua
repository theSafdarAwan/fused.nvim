local M = {}

M.get_hl_groups = function(cp)
	return {
		DiffviewNormal = { fg = cp.base10, bg = cp.bg },
		-- like the > marker for folder
		DiffviewNonText = { fg = cp.base06 },
		-- current line hig ,
		DiffviewCursorLine = { bg = cp.popup_bg },

		DiffviewDiffDelete = { link = "DiffDelete" },
		-- folders names
		DiffviewFolderName = { fg = cp.base06 },
		DiffviewFolderSign = { fg = cp.base06 },
		DiffviewFilePanelFileName = { link = "DiffviewFolderName" },
		-- file path when using flattern dir tree option
		DiffviewFilePanelPath = { link = "DiffviewFolderName" },

		DiffviewStatusLine = { link = "StatusLine" },
		DiffviewStatusLineNC = { link = "StatusLineNC" },
		DiffviewEndOfBuffer = {}, -- end of the files buffer
		-- separator
		DiffviewWinSeparator = { fg = cp.base04 },

		DiffviewStatusUnknown = { fg = cp.base11 },

		-- panel titles
		DiffviewFilePanelTitle = { fg = cp.base11 },
		-- modified files sign in front of file
		DiffviewStatusModified = { fg = cp.base11 },
		-- for renamed files sign in front of file
		DiffviewStatusRenamed = { fg = cp.base15 },
		DiffviewStatusUntracked = { fg = cp.base15 },
		-- counter show after the titles
		DiffviewFilePanelCounter = { fg = cp.base09 },
		-- root path title name
		DiffviewFilePanelRootPath = { fg = cp.base11 },
		-- deletion and insertion counter after the file name
		DiffviewFilePanelDeletions = { link = "DiffDelete" },
		DiffviewFilePanelInsertions = { link = "DiffAdd" },

		-- new files
		DiffviewStatusAdded = { fg = cp.base11 },
		-- deleted fiels
		DiffviewStatusDeleted = { fg = cp.base11 },
		-- unmerged during the conflicts
		DiffviewStatusUnmerged = { fg = cp.base09 },
		-- conflicts counter in front of the file
		DiffviewFilePanelConflicts = { fg = cp.base11 },

		DiffviewStatusCopied = { fg = cp.base09 },

		-- hig =s the staged deleted content when diffin,
		DiffviewDiffAddAsDelete = { link = "DiffDelete" },
	}

	-- TODO: figure out these highlights
	-- local curse = { fg = cp.bg bg = cp.base06 }
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
