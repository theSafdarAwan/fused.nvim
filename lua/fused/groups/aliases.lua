--- Neovim 0.10 and the current nvim-treesitter renamed many captures. The group modules keep
--- using the old names (so older setups still work) and this table says what every old name
--- is called now. `expand()` defines the new name with the same highlight as the old one.
local M = {}

M.treesitter = {
	["@parameter"] = "@variable.parameter",
	["@field"] = "@variable.member",
	["@namespace"] = "@module",
	["@float"] = "@number.float",
	["@symbol"] = "@string.special.symbol",
	["@string.regex"] = "@string.regexp",

	["@method"] = "@function.method",
	["@method.call"] = "@function.method.call",

	["@conditional"] = "@keyword.conditional",
	["@repeat"] = "@keyword.repeat",
	["@debug"] = "@keyword.debug",
	["@include"] = "@keyword.import",
	["@exception"] = "@keyword.exception",
	["@define"] = "@keyword.directive.define",
	["@preproc"] = "@keyword.directive",
	["@storageclass"] = "@keyword.modifier",
	["@type.qualifier"] = "@keyword.modifier",

	["@text.strong"] = "@markup.strong",
	["@text.emphasis"] = "@markup.italic",
	["@text.underline"] = "@markup.underline",
	["@text.strike"] = "@markup.strikethrough",
	["@text.title"] = "@markup.heading",
	["@text.literal"] = "@markup.raw",
	["@text.uri"] = "@markup.link.url",
	["@text.math"] = "@markup.math",
	["@text.environment"] = "@markup.environment",
	["@text.environment.name"] = "@markup.environment.name",
	["@text.reference"] = "@markup.link",
	["@text.todo"] = "@comment.todo",
	["@text.note"] = "@comment.note",
	["@text.warning"] = "@comment.warning",
	["@text.danger"] = "@comment.error",
	["@text.diff.add"] = "@diff.plus",
	["@text.diff.delete"] = "@diff.minus",
}

--- Adds the new names for the old ones that are present in `hls` (keeps names that are
--- already defined). Links that point to an old name are pointed to the new one.
---@param hls table highlight groups.
---@return table hls the same table.
M.expand = function(hls)
	local added = {}
	for old, new in pairs(M.treesitter) do
		if hls[old] and hls[new] == nil then
			local spec = vim.deepcopy(hls[old])
			if spec.link and M.treesitter[spec.link] then
				spec.link = M.treesitter[spec.link]
			end
			added[new] = spec
		end
	end
	for name, spec in pairs(added) do
		hls[name] = spec
	end
	return hls
end

return M
