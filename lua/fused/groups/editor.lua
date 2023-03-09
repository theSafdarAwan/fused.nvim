local M = {}

local utils = require("fused.utils")

M.get_hl_groups = function(cp)
	-- get the background setting
	local tr_bg = require("fused.utils").bg_transparent
	return {
		-- used for the columns set with 'colorcolumn'
		ColorColumn = { bg = cp.string },
		-- comments
		Comment = { fg = cp.base05, italic = utils.italics },
		-- placeholder characters substituted for concealed text (see 'conceallevel')
		Conceal = { fg = cp.string },
		-- character under the cursor
		Cursor = { fg = cp.base, bg = cp.base07 },
		-- the character under the cursor when |language-mapping| is used (see 'guicursor')
		lCursor = { fg = cp.base, bg = cp.base07 },
		-- like Cursor, but used when in IME mode |CursorIM|
		CursorIM = { fg = cp.base, bg = cp.base07 },
		-- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorColumn = { bg = cp.string },
		-- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if forecrust (ctermfg OR guifg) is not secp.
		CursorLine = { bg = cp.base02 },
		-- directory names (and other special names in listings)
		Directory = { fg = cp.blue },
		-- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		EndOfBuffer = { fg = cp.base },
		-- error messages on the command line
		ErrorMsg = { fg = cp.err, bold = true },
		-- the column separating vertically split windows
		VertSplit = { fg = cp.base07 },
		-- line used for closed folds
		Folded = { fg = cp.folds, bg = cp.base02 },
		-- 'foldcolumn'
		FoldColumn = { link = "Folded" },
		-- column where |signs| are displayed
		SignColumn = { bg = cp.bg },
		-- column where |signs| are displayed
		SignColumnSB = { bg = cp.bg },
		-- |:substitute| replacement text highlighting
		Substitute = { bg = cp.base04, fg = cp.const },
		-- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		LineNr = { fg = cp.base05 },
		-- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- highlights the number in numberline.
		CursorLineNr = { fg = cp.string },
		-- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		MatchParen = { bg = cp.base04 },
		-- 'showmode' message (e.g., "-- INSERT -- ")
		ModeMsg = { fg = cp.base07, bold = true },
		-- Area for messages and cmdline
		MsgArea = { fg = cp.base07 },
		-- Separator for scrolled messages, `msgsep` flag of 'display'
		MsgSeparator = {},
		-- |more-prompt|
		MoreMsg = { fg = cp.warn },
		-- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NonText = { fg = cp.base05 },
		-- normal text
		Normal = { fg = cp.base07, bg = tr_bg and "NONE" or cp.bg },
		-- normal text
		NormalNC = { fg = cp.base07 },
		-- normal text
		NormalSB = { fg = cp.base07, bg = cp.base04 },
		-- Normal text in floating windows.
		NormalFloat = { fg = cp.base06, bg = cp.bg },
		-- Normal text in floating windows.
		FloatBorder = { fg = cp.base04 },
		-- Popup menu: normal item.
		Pmenu = { bg = cp.base02, fg = cp.string },
		-- Popup menu: selected item.
		PmenuSel = { fg = cp.base04, bg = cp.orange, bold = true },
		-- Popup menu: scrollbar.
		PmenuSbar = { bg = cp.base02 },
		-- Popup menu: Thumb of the scrollbar.
		PmenuThumb = { bg = cp.warn },
		-- |hit-enter| prompt and yes/no questions
		Question = { fg = cp.magenta },
		-- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		QuickFixLine = { bg = cp.base04, bold = true },
		-- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		Search = { fg = cp.search, bg = cp.base02 },
		-- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		IncSearch = { bg = cp.cp4 },
		-- 'cursearch' highlighting: highlights the current search you're on differently
		CurSearch = { bg = cp.base04 },
		-- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-base06space|
		SpecialKey = { fg = cp.err },
		-- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellBad = { fg = cp.err, undercurl = true },
		-- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellCap = { fg = cp.warn, undercurl = true },
		-- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { fg = cp.blue, undercurl = true },
		-- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		SpellRare = { fg = cp.search, undercurl = true },
		-- status line of current window
		StatusLine = { fg = cp.base07, bg = cp.base03 },
		-- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineNC = { fg = cp.base07, bg = cp.base04 },
		-- tab pages line, not active tab page label
		TabLine = { bg = cp.base04, fg = cp.string },
		-- tab pages line, where there are no labels
		TabLineFill = { bg = cp.base04 },
		-- tab pages line, active tab page label
		TabLineSel = { bg = cp.base05 },
		-- titles for output from ":set all", ":autocmd" etcp.
		Title = { fg = cp.warn, bold = true },
		-- Visual mode selection
		Visual = { bg = cp.base02 },
		-- Visual mode selection when vim is "Not Owning the Selection".
		VisualNOS = { bg = cp.base04 },
		-- warning messages
		WarningMsg = { fg = cp.warn },
		-- "nbsp", "space", "tab" and "trail" in 'listchars'
		base06space = { fg = cp.base05 },
		-- current match in 'wildmenu' completion
		WildMenu = { bg = cp.base04 },
		--
		WinBar = { fg = cp.base06 },
		-- windows seperator color
		WinSeparator = { fg = cp.base04 },

		-- border for hover popup
		HoverBorder = { fg = cp.base04 },

		-- diff mode: Added line |diff.txt|
		DiffAdd = { fg = cp.search },
		-- diff mode: Changed line |diff.txt|
		DiffChange = { fg = cp.property },
		-- diff mode: Deleted line |diff.txt|
		DiffDelete = { fg = cp.err },
	}
end

return M
