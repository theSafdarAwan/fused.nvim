local M = {}

local utils = require("fused.utils")

M.get_hl_groups = function(cp)
	return {
		NeogitNotificationInfo = { link = "@field" },
		NeogitNotificationWarning = { link = "DiagnosticSignWarn" },
		NeogitNotificationError = { link = "DiagnosticSignError" },

		NeogitDiffAddHighlight = { fg = cp.base15 },
		NeogitDiffDeleteHighlight = { bg = cp.base08 },
		-- highlights current highlights
		NeogitDiffContextHighlight = { bg = cp.base02 },
		-- hunk information header like `@@ -5,7 +5,7`
		NeogitHunkHeader = { fg = cp.base01, bg = cp.base06 },
		-- highlight for for neogit folds
		NeogitFold = { link = "Folded" },
		-- highlight for the neogit in diff comment header
		NeogitCommitViewHeader = { fg = cp.base02, bg = cp.base06 },
		-- branch name header
		NeogitBranch = { fg = cp.base11 },
		-- remote branch name
		NeogitRemote = { fg = cp.base11 },

		NeogitDiffAdd = { link = "DiffAdd" },
		NeogitDiffDelete = { link = "DiffDelete" },
		NeogitFilePath = { fg = cp.base06, underline = true },
		-- comment id or object id whatever
		NeogitObjectId = { fg = cp.base17, italic = utils.italics },
		-- file names
		NeogitDiffHeader = { fg = cp.base06, bg = cp.base02 },
		-- recent commit header
		NeogitRecentcommits = { fg = cp.base14 },
		-- Staged Changes Header
		NeogitStagedchanges = { fg = cp.base11 },
		-- unstaged changes header
		NeogitUnStagedchanges = { fg = cp.base09 },
		--untraced files header
		NeogitUntrackedfiles = { fg = cp.base11 },
		-- unmegedchangs
		NeogitUnmergedchanges = { fg = cp.base11 },
	}
	-- TODO: don't know what it highlights so add the ugliest colors so that i will
	-- notice if i see this highlight in neogit
	-- local suffer = { fg = cp.base11, bg = cp.base08 }
	-- hl("NeogitHunkHeaderHighlight", suffer)
	-- hl("NeogitStash", suffer)
	-- hl("NeogitStashes", suffer)
	-- hl("NeogitRebasing", suffer)
	-- hl("NeogitRebaseDone", suffer)
	-- hl("NeogitUnmergedInto", suffer)
	-- hl("NeogitUnpulledFrom", suffer)
	-- hl("NeogitUnpulledchanges", suffer)
end
return M
