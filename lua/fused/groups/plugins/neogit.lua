local M = {}

local utils = require("fused.utils")

M.load_hl = function(cp)
	return {
		NeogitNotificationInfo = { link = "@field" },
		NeogitNotificationWarning = { link = "DiagnosticSignWarn" },
		NeogitNotificationError = { link = "DiagnosticSignError" },

		NeogitDiffAddHighlight = { fg = cp.base13 },
		NeogitDiffDeleteHighlight = { bg = cp.base06 },
		-- highlights current highlights
		NeogitDiffContextHighlight = { bg = cp.popup_bg },
		-- hunk information header like `@@ -5,7 +5,7`
		NeogitHunkHeader = { fg = cp.bg, bg = cp.base04 },
		-- highlight for for neogit folds
		NeogitFold = { link = "Folded" },
		-- highlight for the neogit in diff comment header
		NeogitCommitViewHeader = { fg = cp.popup_bg, bg = cp.base04 },
		-- branch name header
		NeogitBranch = { fg = cp.base09 },
		-- remote branch name
		NeogitRemote = { fg = cp.base09 },

		NeogitDiffAdd = { link = "DiffAdd" },
		NeogitDiffDelete = { link = "DiffDelete" },
		NeogitFilePath = { fg = cp.base04, underline = true },
		-- comment id or object id whatever
		NeogitObjectId = { fg = cp.base15, italic = utils.italics },
		-- file names
		NeogitDiffHeader = { fg = cp.base04, bg = cp.popup_bg },
		-- recent commit header
		NeogitRecentcommits = { fg = cp.base12 },
		-- Staged Changes Header
		NeogitStagedchanges = { fg = cp.base09 },
		-- unstaged changes header
		NeogitUnStagedchanges = { fg = cp.base07 },
		--untraced files header
		NeogitUntrackedfiles = { fg = cp.base09 },
		-- unmegedchangs
		NeogitUnmergedchanges = { fg = cp.base09 },
	}
	-- TODO: don't know what it highlights so add the ugliest colors so that i will
	-- notice if i see this highlight in neogit
	-- local suffer = { fg = cp.base09, bg = cp.base06 }
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
