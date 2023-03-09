local M = {}
local utils = require("fused.utils")

M.get_hl_groups = function(cp)
	local hl_tbl = {}
	local norg_colors = {
		["red"] = cp.base11,
		["base06"] = cp.base06,
		["h1"] = cp.base10,
		["h2"] = cp.base11,
		["h3"] = cp.base17,
		["h4"] = cp.base18,
		["h6"] = cp.base13,
		["h5"] = cp.base14,
		["qc_fg"] = cp.base17,
		["qc_bg"] = cp.base03,
		["desc"] = cp.base18,
		["superscript"] = cp.base09,
		["subscript"] = cp.base14,
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
			fg = norg_colors["base06"],
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
