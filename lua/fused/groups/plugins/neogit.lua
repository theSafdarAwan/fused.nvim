local M = {}

M.load_hl = function(hl, cp)
    hl("NeogitNotificationInfo", { link = "@field" })
    hl("NeogitNotificationWarning", { link = "DiagnosticSignWarn" })
    hl("NeogitNotificationError", { link = "DiagnosticSignError" })

    hl("NeogitDiffAddHighlight", { fg = cp.search })
    hl("NeogitDiffDeleteHighlight", { bg = cp.err_sev })
    -- highlights current highlights
    hl("NeogitDiffContextHighlight", { bg = cp.bg_windows2 })
    -- hunk information header like `@@ -5,7 +5,7`
    hl("NeogitHunkHeader", { fg = cp.bg, bg = cp.white })
    -- highlight for for neogit folds
    hl("NeogitFold", { link = "Folded" })
    -- highlight for the neogit in diff comment header
    hl("NeogitCommitViewHeader", { fg = cp.bg_windows2, bg = cp.white })
    -- branch name header
    hl("NeogitBranch", { fg = cp.func })
    -- remote branch name
    hl("NeogitRemote", { fg = cp.lpink })

    hl("NeogitDiffAdd", { link = "DiffAdd" })
    hl("NeogitDiffDelete", { link = "DiffDelete" })
    hl("NeogitFilePath", { fg = cp.white, underline = true })
    -- comment id or object id whatever
    hl("NeogitObjectId", { fg = cp.variable, italic = true })
    -- file names
    hl("NeogitDiffHeader", { fg = cp.white, bg = cp.bg_windows2 })
    -- recent commit header
    hl("NeogitRecentcommits", { fg = cp.magenta })
    -- Staged Changes Header
    hl("NeogitStagedchanges", { fg = cp.red })
    -- unstaged changes header
    hl("NeogitUnStagedchanges", { fg = cp.warn })
    --untraced files header
    hl("NeogitUntrackedfiles", { fg = cp.err })
    -- unmegedchangs
    hl("NeogitUnmergedchanges", { fg = cp.red })
    -- don't know what it highlights so add the ugliest colors so that i will
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
