local M = {}

M.get_hl_groups = function(cp)
	local utils = require("fused.utils")

	-- get the background setting
	local tr_bg = require("fused.utils").bg_transparent
	if utils.terminal_colors then
		----------------------------------------------------------------------
		--                         terminal colors                          --
		----------------------------------------------------------------------
		-- dark
		vim.g.terminal_color_0 = tr_bg or cp.base011
		vim.g.terminal_color_8 = cp.base05

		-- light
		vim.g.terminal_color_7 = cp.base07
		vim.g.terminal_color_15 = cp.base07

		-- colors
		vim.g.terminal_color_1 = cp.base11
		vim.g.terminal_color_9 = cp.base11

		vim.g.terminal_color_2 = cp.base15
		vim.g.terminal_color_10 = cp.base15

		vim.g.terminal_color_3 = cp.base09
		vim.g.terminal_color_11 = cp.base12

		vim.g.terminal_color_4 = cp.base10
		vim.g.terminal_color_12 = cp.base13

		vim.g.terminal_color_5 = cp.base14
		vim.g.terminal_color_13 = cp.base14

		vim.g.terminal_color_6 = cp.base10
		vim.g.terminal_color_14 = cp.cyan10
	end
	return {
		-- used for the columns set with 'colorcolumn'
		ColorColumn = { bg = cp.base18 },
		-- comments
		Comment = { fg = cp.base05, italic = utils.italics },
		-- placeholder characters substituted for concealed text (see 'conceallevel')
		Conceal = { fg = cp.base18 },
		-- character under the cursor
		Cursor = { fg = cp.base, bg = cp.base07 },
		-- the character under the cursor when |language-mapping| is used (see 'guicursor')
		lCursor = { fg = cp.base, bg = cp.base07 },
		-- like Cursor, but used when in IME mode |CursorIM|
		CursorIM = { fg = cp.base, bg = cp.base07 },
		-- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorColumn = { bg = cp.base18 },
		-- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if forecrust (ctermfg OR guifg) is not secp.
		CursorLine = { bg = cp.base02 },
		-- directory names (and other special names in listings)
		Directory = { fg = cp.base10 },
		-- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		EndOfBuffer = { fg = cp.base },
		-- error messages on the command line
		ErrorMsg = { fg = cp.base11, bold = true },
		-- the column separating vertically split windows
		VertSplit = { fg = cp.base07 },
		-- line used for closed folds
		Folded = { fg = cp.base18, bg = cp.base02 },
		-- 'foldcolumn'
		FoldColumn = { link = "Folded" },
		-- column where |signs| are displayed
		SignColumn = { bg = cp.base01 },
		-- column where |signs| are displayed
		SignColumnSB = { bg = cp.base01 },
		-- |:substitute| replacement text highlighting
		Substitute = { bg = cp.base04, fg = cp.base12 },
		-- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		LineNr = { fg = cp.base05 },
		-- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- highlights the number in numberline.
		CursorLineNr = { fg = cp.base18 },
		-- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		MatchParen = { bg = cp.base04 },
		-- 'showmode' message (e.g., "-- INSERT -- ")
		ModeMsg = { fg = cp.base07, bold = true },
		-- Area for messages and cmdline
		MsgArea = { fg = cp.base07 },
		-- Separator for scrolled messages, `msgsep` flag of 'display'
		MsgSeparator = {},
		-- |more-prompt|
		MoreMsg = { fg = cp.base09 },
		-- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		NonText = { fg = cp.base05 },
		-- normal text
		Normal = { fg = cp.base07, bg = tr_bg and "NONE" or cp.base01 },
		-- normal text
		NormalNC = { fg = cp.base07 },
		-- normal text
		NormalSB = { fg = cp.base07, bg = cp.base04 },
		-- Normal text in floating windows.
		NormalFloat = { fg = cp.base06, bg = cp.base01 },
		-- Normal text in floating windows.
		FloatBorder = { fg = cp.base04 },
		-- Popup menu: normal item.
		Pmenu = { bg = cp.base02, fg = cp.base18 },
		-- Popup menu: selected item.
		PmenuSel = { fg = cp.base04, bg = cp.base12, bold = true },
		-- Popup menu: scrollbar.
		PmenuSbar = { bg = cp.base02 },
		-- Popup menu: Thumb of the scrollbar.
		PmenuThumb = { bg = cp.base09 },
		-- |hit-enter| prompt and yes/no questions
		Question = { fg = cp.base14 },
		-- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		QuickFixLine = { bg = cp.base04, bold = true },
		-- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		Search = { fg = cp.base15, bg = cp.base02 },
		-- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		IncSearch = { bg = cp.base04 },
		-- 'cursearch' highlighting: highlights the current search you're on differently
		CurSearch = { fg = cp.base15, bg = cp.base04 },
		-- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-base06space|
		SpecialKey = { fg = cp.base11 },
		-- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellBad = { fg = cp.base11, undercurl = true },
		-- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellCap = { fg = cp.base09, undercurl = true },
		-- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { fg = cp.base10, undercurl = true },
		-- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		SpellRare = { fg = cp.base15, undercurl = true },
		-- status line of current window
		StatusLine = { fg = cp.base07, bg = cp.base03 },
		-- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		StatusLineNC = { fg = cp.base07, bg = cp.base04 },
		-- tab pages line, not active tab page label
		TabLine = { fg = cp.base06, bg = cp.base03 },
		-- tab pages line, where there are no labels
		TabLineFill = { link = "TabLine" },
		-- tab pages line, active tab page label
		TabLineSel = { bg = cp.base05 },
		-- titles for output from ":set all", ":autocmd" etcp.
		Title = { fg = cp.base09, bold = true },
		-- Visual mode selection
		Visual = { bg = cp.base02 },
		-- Visual mode selection when vim is "Not Owning the Selection".
		VisualNOS = { bg = cp.base04 },
		-- warning messages
		WarningMsg = { fg = cp.base09 },
		-- "nbsp", "space", "tab" and "trail" in 'listchars'
		space = { fg = cp.base05 },
		-- current match in 'wildmenu' completion
		WildMenu = { bg = cp.base04 },
		--
		WinBar = { fg = cp.base06 },
		-- windows seperator color
		WinSeparator = { fg = cp.base04 },

		-- border for hover popup
		HoverBorder = { fg = cp.base04 },

		-- diff mode: Added line |diff.txt|
		DiffAdd = { fg = cp.base15 },
		-- diff mode: Changed line |diff.txt|
		DiffChange = { fg = cp.base10 },
		-- diff mode: Deleted line |diff.txt|
		DiffDelete = { fg = cp.base11 },
	}
end

return M
