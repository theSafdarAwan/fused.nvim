local M = {}

M.load_hl = function(hl, cp)
	hl("DiffviewFilePanelTitle", { fg = cp.magenta })
	hl("DiffviewNormal", { fg = cp.property, bg = cp.bg })
	-- like the > marker for folder
	hl("DiffviewNonText", { fg = cp.white })
	-- current line highlight
	hl("DiffviewCursorLine", { bg = cp.bg_windows2 })

	hl("DiffviewDiffDelete", { link = "DiffDelete" })
	-- folders names
	hl("DiffviewFolderName", { fg = cp.white })
	hl("DiffviewFolderSign", { fg = cp.white })
	hl("DiffviewFilePanelFileName", { link = "DiffviewFolderName" })
	-- file path when using flattern dir tree option
	hl("DiffviewFilePanelPath", { link = "DiffviewFolderName" })

	hl("DiffviewStatusLine", { link = "StatusLine" })
	hl("DiffviewStatusLineNC", { link = "StatusLineNC" })
	hl("DiffviewEndOfBuffer", {}) -- end of the files buffer
	-- separator
	hl("DiffviewWinSeparator", { fg = cp.border })

	hl("DiffviewStatusUnknown", { fg = cp.red })

	-- panel titles
	hl("DiffviewFilePanelTitle", { fg = cp.red })
	-- modified files sign in front of file
	hl("DiffviewStatusModified", { fg = cp.red })
	-- for renamed files sign in front of file
	hl("DiffviewStatusRenamed", { fg = cp.search })
	hl("DiffviewStatusUntracked", { fg = cp.search })
	-- counter show after the titles
	hl("DiffviewFilePanelCounter", { fg = cp.warn })
	-- root path title name
	hl("DiffviewFilePanelRootPath", { fg = cp.lpink })
	-- deletion and insertion counter after the file name
	hl("DiffviewFilePanelDeletions", { link = "DiffDelete" })
	hl("DiffviewFilePanelInsertions", { link = "DiffAdd" })

	-- new files
	hl("DiffviewStatusAdded", { fg = cp.red })
	-- deleted fiels
	hl("DiffviewStatusDeleted", { fg = cp.err })
	-- unmerged during the conflicts
	hl("DiffviewStatusUnmerged", { fg = cp.warn })
	-- conflicts counter in front of the file
	hl("DiffviewFilePanelConflicts", { fg = cp.red })

	hl("DiffviewStatusCopied", { fg = cp.warn })

	-- highlights the staged deleted content when diffing
	hl("DiffviewDiffAddAsDelete", { link = "DiffDelete" })

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
