local M = {}
local utils = require("fused.utils")

M.load_hl = function(cp)
	local hl_tbl = {}
	local norg_colors = {
		["red"] = cp.err,
		["white"] = cp.white,
		["h1"] = cp.property,
		["h2"] = cp.red,
		["h3"] = cp.variable,
		["h4"] = cp.string,
		["h6"] = cp.teal,
		["h5"] = cp.magenta,
		["qc_fg"] = cp.variable,
		["qc_bg"] = cp.bg_windows,
		["desc"] = cp.string,
		["superscript"] = cp.warn,
		["subscript"] = cp.magenta2,
		["code_block"] = cp.cp5,
	}

	local heading_level = {
		"1",
		"2",
		"3",
		"4",
		"5",
		"6",
	}

	for k, v in ipairs(heading_level) do
		-- headings
		local hg = "@neorg.headings." .. v .. ".title"
		local hgp = "@neorg.headings." .. v .. ".prefix"
		local hc = norg_colors["h" .. tostring(k)]
		hl_tbl[hg] = { fg = hc }
		hl_tbl[hgp] = { link = hg }

		-- headings links location
		local ll = "@neorg.links.location.heading." .. v
		hl_tbl[ll] = { fg = hc, underdotted = true }

		-- quotes
		local qp = "@neorg.quotes." .. v .. ".prefix"
		local qc = "@neorg.quotes." .. v .. ".content"
		hl_tbl[qp] = {
			fg = norg_colors["white"],
		}
		hl_tbl[qc] = {
			fg = norg_colors["qc_fg"],
			bg = norg_colors["qc_bg"],
			italic = utils.italics,
		}
	end

	hl_tbl["@neorg.links.description"] = { fg = norg_colors["desc"] }
	hl_tbl["@neorg.markup.superscript"] = { fg = norg_colors["superscript"] }
	hl_tbl["@neorg.markup.subscript"] = { fg = norg_colors["subscript"] }
	hl_tbl["@neorg.tags.ranged_verbatim.code_block"] = { bg = norg_colors["code_block"] }
	-- neorg markers
	hl_tbl["@neorg.markers.title"] = { fg = norg_colors["h2"] }
	hl_tbl["@neorg.markers.prefix"] = { fg = norg_colors["h2"] }
	-- neorg definitions
	hl_tbl["@neorg.definitions.title"] = { fg = norg_colors["h6"] }
	hl_tbl["@neorg.definitions.prefix"] = { fg = norg_colors["h6"] }
	-- neorg footnotes
	hl_tbl["@neorg.footnotes.title"] = { fg = norg_colors["h3"] }
	hl_tbl["@neorg.footnotes.prefix"] = { fg = norg_colors["h3"] }
	return hl_tbl
end

return M
