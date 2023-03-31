local M = {}

M.get_hl_groups = function(cp)
	return {
		Cmdline = { link = "MsgArea" }, -- Normal for the classic cmdline area at the bottom"
		CmdlineIcon = { link = "FloatBorder" }, -- Cmdline icon
		CmdlineIconSearch = { link = "DiagnosticSignWarn" }, -- Cmdline search icon (`/` and `?`)
		CmdlinePrompt = { link = "Title" }, -- prompt for input()
		CmdlinePopup = { link = "Normal" }, -- Normal for the cmdline popup
		CmdlinePopupBorder = { link = "DiagnosticSignInfo" }, -- Cmdline popup border
		CmdlinePopupBorderSearch = { link = "DiagnosticSignWarn" }, -- Cmdline popup border for search
		Confirm = { link = "Normal" }, -- Normal for the confirm view
		ConfirmBorder = { link = "DiagnosticSignInfo" }, -- Border for the confirm view
		Cursor = { link = "Cursor" }, -- Fake Cursor
		Mini = { link = "MsgArea" }, -- Normal for mini view
		Popup = { link = "NormalFloat" }, -- Normal for popup views
		PopupBorder = { link = "FloatBorder" }, -- Border for popup views
		Popupmenu = { link = "Pmenu" }, -- Normal for the popupmenu
		PopupmenuBorder = { link = "FloatBorder" }, -- Popupmenu border
		PopupmenuMatch = { link = "Special" }, -- Part of the item that matches the input
		PopupmenuSelected = { link = "PmenuSel" }, -- Selected item in the popupmenu
		Scrollbar = { link = "PmenuSbar" }, -- Normal for scrollbar
		ScrollbarThumb = { link = "PmenuThumb" }, -- Scrollbar thumb
		Split = { link = "NormalFloat" }, -- Normal for split views
		SplitBorder = { link = "FloatBorder" }, -- Border for split views
		VirtualText = { link = "DiagnosticVirtualTextInfo" }, -- Default hl group for virtualtext views
		FormatProgressDone = { link = "Search" }, -- Progress bar done
		FormatProgressTodo = { link = "CursorLine" }, -- progress bar todo
		FormatEvent = { link = "NonText" },
		FormatKind = { link = "NonText" },
		FormatDate = { link = "Special" },
		FormatConfirm = { link = "CursorLine" },
		FormatConfirmDefault = { link = "Visual" },
		FormatTitle = { link = "Title" },
		FormatLevelDebug = { link = "NonText" },
		FormatLevelTrace = { link = "NonText" },
		FormatLevelOff = { link = "NonText" },
		FormatLevelInfo = { link = "DiagnosticVirtualTextInfo" },
		FormatLevelWarn = { link = "DiagnosticVirtualTextWarn" },
		FormatLevelError = { link = "DiagnosticVirtualTextError" },
		LspProgressSpinner = { link = "Constant" }, -- Lsp progress spinner
		LspProgressTitle = { link = "NonText" }, -- Lsp progress title
		LspProgressClient = { link = "Title" }, -- Lsp progress client name
		CompletionItemMenu = { link = "none" }, -- Normal for the popupmenu
		CompletionItemWord = { link = "none" }, -- Normal for the popupmenu
		CompletionItemKindDefault = { link = "Special" },
		CompletionItemKindColor = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindFunction = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindClass = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindMethod = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindConstructor = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindInterface = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindModule = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindStruct = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindKeyword = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindValue = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindProperty = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindConstant = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindSnippet = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindFolder = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindText = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindEnumMember = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindUnit = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindField = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindFile = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindVariable = { link = "NoiceCompletionItemKindDefault" },
		CompletionItemKindEnum = { link = "NoiceCompletionItemKindDefault" },
	}
end

return M
