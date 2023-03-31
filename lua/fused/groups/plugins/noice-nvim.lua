local M = {}

M.get_hl_groups = function(cp)
	local border = "NoiceCmdlinePopupBorder"
	return {
		NoiceCmdline = { fg = cp.base07, bg = cp.base02 }, -- Normal for the classic cmdline area at the bottom"
		NoiceCmdlineIcon = { fg = cp.base13 }, -- Cmdline icon
		NoiceCmdlineIconSearch = { fg = cp.base08 }, -- Cmdline search icon (`/` and `?`)
		NoiceCmdlinePrompt = { link = "Title" }, -- prompt for input()
		NoiceCmdlinePopup = { link = "NormalFloat" }, -- Normal for the cmdline popup
		NoiceCmdlinePopupBorder = { link = "FloatBorder" }, -- Cmdline popup border
		NoiceCmdlinePopupBorderSearch = { link = border }, -- Cmdline popup border for search
		NoiceConfirm = { link = "Normal" }, -- Normal for the confirm view
		NoiceConfirmBorder = { link = border }, -- Border for the confirm view
		NoiceCursor = { bg = cp.base07 }, -- Fake Cursor
		NoiceMini = { link = "Normal" }, -- Normal for mini view
		NoicePopup = { link = "NormalFloat" }, -- Normal for popup views
		NoicePopupBorder = { link = border }, -- Border for popup views
		NoicePopupmenu = { link = "Pmenu" }, -- Normal for the popupmenu
		NoicePopupmenuBorder = { link = border }, -- Popupmenu border
		NoicePopupmenuMatch = { fg = cp.base15 }, -- Part of the item that matches the input
		NoicePopupmenuSelected = { link = "PmenuSel" }, -- Selected item in the popupmenu
		NoiceScrollbar = { link = "PmenuSbar" }, -- Normal for scrollbar
		NoiceScrollbarThumb = { link = "PmenuThumb" }, -- Scrollbar thumb
		NoiceSplit = { link = "NormalFloat" }, -- Normal for split views
		NoiceSplitBorder = { link = border }, -- Border for split views
		NoiceVirtualText = { link = "DiagnosticVirtualTextInfo" }, -- Default hl group for virtualtext views
		NoiceFormatProgressDone = { link = "Search" }, -- Progress bar done
		NoiceFormatProgressTodo = { link = "CursorLine" }, -- progress bar todo
		NoiceFormatEvent = { link = "NonText" },
		NoiceFormatKind = { link = "NonText" },
		NoiceFormatDate = { link = "Special" },
		NoiceFormatConfirm = { link = "CursorLine" },
		NoiceFormatConfirmDefault = { link = "Visual" },
		NoiceFormatTitle = { link = "Title" },
		NoiceFormatLevelDebug = { link = "NonText" },
		NoiceFormatLevelTrace = { link = "NonText" },
		NoiceFormatLevelOff = { link = "NonText" },
		NoiceFormatLevelInfo = { link = "DiagnosticVirtualTextInfo" },
		NoiceFormatLevelWarn = { link = "DiagnosticVirtualTextWarn" },
		NoiceFormatLevelError = { link = "DiagnosticVirtualTextError" },
		NoiceLspProgressSpinner = { link = "Constant" }, -- Lsp progress spinner
		NoiceLspProgressTitle = { link = "NonText" }, -- Lsp progress title
		NoiceLspProgressClient = { link = "Title" }, -- Lsp progress client name
		NoiceCompletionItemMenu = { link = "none" }, -- Normal for the popupmenu
		NoiceCompletionItemWord = { link = "none" }, -- Normal for the popupmenu
		NoiceCompletionItemKindDefault = { link = "Special" },
		NoiceCompletionItemKindColor = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindFunction = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindClass = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindMethod = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindConstructor = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindInterface = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindModule = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindStruct = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindKeyword = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindValue = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindProperty = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindConstant = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindSnippet = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindFolder = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindText = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindEnumMember = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindUnit = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindField = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindFile = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindVariable = { link = "NoiceCompletionItemKindDefault" },
		NoiceCompletionItemKindEnum = { link = "NoiceCompletionItemKindDefault" },
	}
end

return M
