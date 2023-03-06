local M = {}

local utils = require("fused.utils")

M.load_hl = function(cp)
	return {
		NeogitNotificationInfo = { link = "@field" },
		NeogitNotificationWarning = { link = "DiagnosticSignWarn" },
		NeogitNotificationError = { link = "DiagnosticSignError" },

		NeogitDiffAddHighlight = { fg = cp.search },
		NeogitDiffDeleteHighlight = { bg = cp.err_sev },
		-- highlights current highlights
		NeogitDiffContextHighlight = { bg = cp.bg_windows2 },
		-- hunk information header like `@@ -5,7 +5,7`
		NeogitHunkHeader = { fg = cp.bg, bg = cp.white },
		-- highlight for for neogit folds
		NeogitFold = { link = "Folded" },
		-- highlight for the neogit in diff comment header
		NeogitCommitViewHeader = { fg = cp.bg_windows2, bg = cp.white },
		-- branch name header
		NeogitBranch = { fg = cp.func },
		-- remote branch name
		NeogitRemote = { fg = cp.light_pink },

		NeogitDiffAdd = { link = "DiffAdd" },
		NeogitDiffDelete = { link = "DiffDelete" },
		NeogitFilePath = { fg = cp.white, underline = true },
		-- comment id or object id whatever
		NeogitObjectId = { fg = cp.variable, italic = utils.italics },
		-- file names
		NeogitDiffHeader = { fg = cp.white, bg = cp.bg_windows2 },
		-- recent commit header
		NeogitRecentcommits = { fg = cp.magenta },
		-- Staged Changes Header
		NeogitStagedchanges = { fg = cp.red },
		-- unstaged changes header
		NeogitUnStagedchanges = { fg = cp.warn },
		--untraced files header
		NeogitUntrackedfiles = { fg = cp.err },
		-- unmegedchangs
		NeogitUnmergedchanges = { fg = cp.red },
	}
	-- TODO: don't know what it highlights so add the ugliest colors so that i will
	-- notice if i see this highlight in neogit
	-- local suffer = { fg = cp.err, bg = cp.err_sev }
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
