local function load_hl(hl, cp)
	hl("NotifyLogTitle", { fg = cp.white })
	hl("NotifyLogTime", { fg = cp.err_sev })

	hl("NotifyERRORBorder", { fg = cp.err })

	hl("NotifyINFOTitle", { fg = cp.search, bold = true })
	hl("NotifyINFOBody", { fg = cp.white })
	hl("NotifyINFOIcon", { link = "NotifyINFOTitle" })
	hl("NotifyINFOBorder", { link = "NotifyINFOTitle" })

	hl("NotifyWARNTitle", { fg = cp.warn })
	hl("NotifyWARNBody", { fg = cp.white })
	hl("NotifyWARNIcon", { link = "NotifyWARNTitle" })
	hl("NotifyWARNBorder", { link = "NotifyWARNTitle" })

	hl("NotifyDEBUGTitle", { fg = cp.variable })
	hl("NotifyDEBUGBody", { fg = cp.white })
	hl("NotifyDEBUGIcon", { link = "NotifyDEBUGTitle" })
	hl("NotifyDEBUGBorder", { link = "NotifyDEBUGTitle" })

	hl("NotifyERRORTitle", { fg = cp.err })
	hl("NotifyERRORBody", { fg = cp.white })
	hl("NotifyERRORIcon", { link = "NotifyERRORTitle" })
	hl("NotifyERRORBorder", { link = "NotifyERRORTitle" })

	hl("NotifyTRACETitle", { fg = cp.blue })
	hl("NotifyTRACEBody", { fg = cp.white })
	hl("NotifyTRACEIcon", { link = "NotifyTRACETitle" })
	hl("NotifyTRACEBorder", { link = "NotifyTRACETitle" })
end

return { load_hl = load_hl }
