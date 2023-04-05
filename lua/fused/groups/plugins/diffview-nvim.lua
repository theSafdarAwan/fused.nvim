local M = {}

M.get_hl_groups = function(cp)
	return {
		DiffviewNormal = { fg = cp.base08, bg = cp.bg },
		-- like the > marker for folder
		DiffviewNonText = { fg = cp.base04 },
		-- current line hig ,
		DiffviewCursorLine = { bg = cp.popup_bg },

		DiffviewDiffDelete = { link = "DiffDelete" },
		-- folders names
		DiffviewFolderName = { fg = cp.base04 },
		DiffviewFolderSign = { fg = cp.base04 },
		DiffviewFilePanelFileName = { link = "DiffviewFolderName" },
		-- file path when using flattern dir tree option
		DiffviewFilePanelPath = { link = "DiffviewFolderName" },

		DiffviewStatusLine = { link = "StatusLine" },
		DiffviewStatusLineNC = { link = "StatusLineNC" },
		DiffviewEndOfBuffer = {}, -- end of the files buffer
		-- separator
		DiffviewWinSeparator = { fg = cp.base02 },

		DiffviewStatusUnknown = { fg = cp.base09 },

		-- panel titles
		DiffviewFilePanelTitle = { fg = cp.base09 },
		-- modified files sign in front of file
		DiffviewStatusModified = { fg = cp.base09 },
		-- for renamed files sign in front of file
		DiffviewStatusRenamed = { fg = cp.base13 },
		DiffviewStatusUntracked = { fg = cp.base13 },
		-- counter show after the titles
		DiffviewFilePanelCounter = { fg = cp.base07 },
		-- root path title name
		DiffviewFilePanelRootPath = { fg = cp.base09 },
		-- deletion and insertion counter after the file name
		DiffviewFilePanelDeletions = { link = "DiffDelete" },
		DiffviewFilePanelInsertions = { link = "DiffAdd" },

		-- new files
		DiffviewStatusAdded = { fg = cp.base09 },
		-- deleted fiels
		DiffviewStatusDeleted = { fg = cp.base09 },
		-- unmerged during the conflicts
		DiffviewStatusUnmerged = { fg = cp.base07 },
		-- conflicts counter in front of the file
		DiffviewFilePanelConflicts = { fg = cp.base09 },

		DiffviewStatusCopied = { fg = cp.base07 },

		-- hig =s the staged deleted content when diffin,
		DiffviewDiffAddAsDelete = { link = "DiffDelete" },
	}

	-- TODO: figure out these highlights
	-- local curse = { fg = cp.bg bg = cp.base04 }
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
