local M = {}
local cp = require("fused.palletes").dark_pallete
local hl = require("fused.utils").get

M.set_lsp_hl = function()
    hl("LspReferenceText", { bg = cp.wred, bold = true }) -- used for highlighting "text" references
    hl("LspReferenceRead", { bg = cp.wred, bold = true }) -- used for highlighting "read" references
    hl("LspReferenceWrite", { bg = cp.wred, bold = true }) -- used for highlighting "write" references

    hl("DiagnosticVirtualTextError", { fg = cp.error_red })
    hl("DiagnosticVirtualTextWarn", { fg = cp.yellow })
    hl("DiagnosticVirtualTextHint", { fg = cp.blue })
    hl("DiagnosticVirtualTextInfo", { fg = cp.sky })

    hl("DiagnosticFloatingError", { fg = cp.error_red })
    hl("DiagnosticFloatingWarn", { fg = cp.yellow })
    hl("DiagnosticFloatingHint", { fg = cp.blue })
    hl("DiagnosticFloatingInfo", { fg = cp.sky })

    hl("DiagnosticSignError", { fg = cp.error_red })
    hl("DiagnosticSignWarn", { fg = cp.yellow })
    hl("DiagnosticSignHint", { fg = cp.blue })
    hl("DiagnosticSignInfo", { fg = cp.sky })

    hl(
        "DiagnosticUnderlineError",
        -- { fg = Colors.error_red, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineWarn",
        -- { fg = Colors.color_20, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineInfo",
        -- { fg = Colors.color_21, bg = Colors.color_2, underline = true }
        { underline = true }
    )
    hl(
        "DiagnosticUnderlineHint",
        -- { fg = Colors.fl_color_6, bg = Colors.color_2, underline = true }
        { underline = true }
    )
end

return M
