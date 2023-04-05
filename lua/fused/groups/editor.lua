local M = {}

M.get_hl_groups = function(cp)
	local utils = require("fused.utils")

	-- get the background setting
	local tr_bg = require("fused.utils").background_transparent
	if utils.terminal_colors then
		----------------------------------------------------------------------
		--                         terminal colors                          --
		----------------------------------------------------------------------
		-- dark
		vim.g.terminal_color_0 = tr_bg or cp.bg1
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
		ColorColumn = { bg = cp.base03 }, -- used for the columns set with 'colorcolumn'
		Comment = { fg = cp.base05, italic = utils.italics }, -- comments
		Conceal = { fg = cp.base18 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cp.base, bg = cp.base07 }, -- character under the cursor
		lCursor = { fg = cp.base, bg = cp.base07 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cp.base, bg = cp.base07 }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cp.base18 }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorLine = { bg = cp.popup_bg }, -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if forecrust (ctermfg OR guifg) is not secp.
		Directory = { fg = cp.base10 }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cp.base }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cp.base11, bold = true }, -- error messages on the command line
		VertSplit = { fg = cp.base07 }, -- the column separating vertically split windows
		Folded = { fg = cp.base18, bg = cp.popup_bg }, -- line used for closed folds
		FoldColumn = { link = "Folded" }, -- 'foldcolumn'
		SignColumn = { bg = cp.bg }, -- column where |signs| are displayed
		SignColumnSB = { bg = cp.bg }, -- column where |signs| are displayed
		Substitute = { bg = cp.base04, fg = cp.base12 }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cp.base05 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		CursorLineNr = { fg = cp.base18 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { bg = cp.base04 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cp.base07, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cp.base07 }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cp.base09 }, -- |more-prompt|
		NonText = { fg = cp.base03 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cp.base07, bg = tr_bg and "NONE" or cp.bg }, -- normal text
		NormalNC = { fg = cp.base07 }, -- normal text
		NormalSB = { fg = cp.base07, bg = cp.base04 }, -- normal text
		NormalFloat = { fg = cp.base06, bg = cp.bg }, -- Normal text in floating windows.
		FloatBorder = { fg = cp.base04 }, -- Normal text in floating windows.
		Pmenu = { fg = cp.base18, bg = cp.popup_bg }, -- Popup menu: normal item.
		PmenuSel = { fg = cp.base04, bg = cp.base12, bold = true }, -- Popup menu: selected item.
		PmenuSbar = { bg = cp.popup_bg }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cp.base09 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cp.base14 }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cp.base04, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { fg = cp.base15, bg = cp.popup_bg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		IncSearch = { bg = cp.base04 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { fg = cp.base15, bg = cp.base04 }, -- 'cursearch' highlighting: highlights the current search you're on differently
		SpecialKey = { fg = cp.base11 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-base06space|
		SpellBad = { fg = cp.base11, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { fg = cp.base09, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { fg = cp.base10, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { fg = cp.base15, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cp.base07, bg = cp.base03 }, -- status line of current window
		StatusLineNC = { fg = cp.base07, bg = cp.base04 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { fg = cp.base06, bg = cp.base03 }, -- tab pages line, not active tab page label
		TabLineFill = { link = "TabLine" }, -- tab pages line, where there are no labels
		TabLineSel = { bg = cp.base05 }, -- tab pages line, active tab page label
		Title = { fg = cp.base09, bold = true }, -- titles for output from ":set all", ":autocmd" etcp.
		Visual = { bg = cp.popup_bg }, -- Visual mode selection
		VisualNOS = { bg = cp.base04 }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cp.base09 }, -- warning messages
		space = { fg = cp.base05 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cp.base04 }, -- current match in 'wildmenu' completion
		WinBar = { fg = cp.base06 }, --
		WinSeparator = { fg = cp.base04 }, -- windows seperator color
		HoverBorder = { fg = cp.base04 }, -- border for hover popup
		DiffAdd = { fg = cp.base15 }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cp.base10 }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cp.base11 }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
