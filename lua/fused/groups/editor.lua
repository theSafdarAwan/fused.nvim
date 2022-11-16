local M = {}

M.set_editor_hl = function(hl, cp)
    -- used for the columns set with 'colorcolumn'
    hl("ColorColumn", { bg = cp.string })
    -- placeholder characters substituted for concealed text (see 'conceallevel')
    hl("Conceal", { fg = cp.string })
    -- character under the cursor
    hl("Cursor", { fg = cp.base, bg = cp.text })
    -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    hl("lCursor", { fg = cp.base, bg = cp.text })
    -- like Cursor, but used when in IME mode |CursorIM|
    hl("CursorIM", { fg = cp.base, bg = cp.text })
    -- Screen-column at the cursor, when 'cursorcolumn' is secp.
    hl("CursorColumn", { bg = cp.string })
    -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if forecrust (ctermfg OR guifg) is not secp.
    hl("CursorLine", { bg = cp.dark })
    -- directory names (and other special names in listings)
    hl("Directory", { fg = cp.blue })
    -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    hl("EndOfBuffer", { fg = cp.base })
    -- error messages on the command line
    hl("ErrorMsg", { fg = cp.red, bold = true })
    -- the column separating vertically split windows
    hl("VertSplit", { fg = cp.text })
    -- line used for closed folds
    hl("Folded", { fg = cp.string, bg = cp.dark })
    -- 'foldcolumn'
    hl("FoldColumn", { fg = cp.string })
    -- column where |signs| are displayed
    hl("SignColumn", { bg = cp.black })
    -- column where |signs| are displayed
    hl("SignColumnSB", { bg = cp.black })
    -- |:substitute| replacement text highlighting
    hl("Substitute", { bg = cp.dark, fg = cp.radish_pink })
    -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
    hl("LineNr", { fg = cp.cp1 })
    -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- highlights the number in numberline.
    hl("CursorLineNr", { fg = cp.string })
    -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    hl("MatchParen", { bg = cp.dark })
    -- 'showmode' message (e.g., "-- INSERT -- ")
    hl("ModeMsg", { fg = cp.text, bold = true })
    -- Area for messages and cmdline
    hl("MsgArea", { fg = cp.text })
    -- Separator for scrolled messages, `msgsep` flag of 'display'
    hl("MsgSeparator", {})
    -- |more-prompt|
    hl("MoreMsg", { fg = cp.yellow })
    -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    hl("NonText", { fg = cp.string })
    -- normal text
    hl("Normal", { fg = cp.text })
    -- normal text
    hl("NormalNC", { fg = cp.text })
    -- normal text
    hl("NormalSB", { fg = cp.text, bg = cp.dark })
    -- Normal text in floating windows.
    hl("NormalFloat", { fg = cp.cp2, bg = cp.black })
    -- Normal text in floating windows.
    hl("FloatBorder", { fg = cp.cp1, bg = cp.black })
    -- Popup menu: normal item.
    hl("Pmenu", { bg = cp.cp4, fg = cp.string })
    -- Popup menu: selected item.
    hl("PmenuSel", { fg = cp.dark, bg = cp.dyellow, bold = true })
    -- Popup menu: scrollbar.
    hl("PmenuSbar", { bg = cp.dark })
    -- Popup menu: Thumb of the scrollbar.
    hl("PmenuThumb", { bg = cp.yellow })
    -- |hit-enter| prompt and yes/no questions
    hl("Question", { fg = cp.magenta })
    -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    hl("QuickFixLine", { bg = cp.dark, bold = true })
    -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
    hl("Search", { bg = cp.cp0 })
    -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    hl("IncSearch", { bg = cp.cp0 })
    -- 'cursearch' highlighting: highlights the current search you're on differently
    hl("CurSearch", { bg = cp.dark })
    -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
    hl("SpecialKey", { fg = cp.red })
    -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    hl("SpellBad", { fg = cp.red, undercurl = true })
    -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    hl("SpellCap", { fg = cp.yellow, undercurl = true })
    -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    hl("SpellLocal", { fg = cp.blue, undercurl = true })
    -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    hl("SpellRare", { fg = cp.green, undercurl = true })
    -- status line of current window
    hl("StatusLine", { fg = cp.text, bg = cp.dark })
    -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    hl("StatusLineNC", { fg = cp.text, bg = cp.bg })
    -- tab pages line, not active tab page label
    hl("TabLine", { bg = cp.dark, fg = cp.string })
    -- tab pages line, where there are no labels
    hl("TabLineFill", { bg = cp.dark })
    -- tab pages line, active tab page label
    hl("TabLineSel", { bg = cp.cp1 })
    -- titles for output from ":set all", ":autocmd" etcp.
    hl("Title", { fg = cp.yellow, bold = true })
    -- Visual mode selection
    hl("Visual", { bg = cp.dark })
    -- Visual mode selection when vim is "Not Owning the Selection".
    hl("VisualNOS", { bg = cp.cp1 })
    -- warning messages
    hl("WarningMsg", { fg = cp.yellow })
    -- "nbsp", "space", "tab" and "trail" in 'listchars'
    hl("Whitespace", { fg = cp.cp1 })
    -- current match in 'wildmenu' completion
    hl("WildMenu", { bg = cp.dark })
    --
    hl("WinBar", { fg = cp.white })
    -- windows seperator color
    hl("WinSeparator", { fg = cp.dark })
    --
    -- diff mode: Added line |diff.txt|
    hl("DiffAdd", { fg = cp.green })
    -- diff mode: Changed line |diff.txt|
    hl("DiffChange", { fg = cp.radish_pink })
    -- diff mode: Deleted line |diff.txt|
    hl("DiffDelete", { fg = cp.wred })
end

return M
