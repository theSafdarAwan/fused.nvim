local function load_builtins(colors)
	local hls = {}
	local groups = {
		"editor",
		"syntax",
		"lsp",
	}
	for _, group in ipairs(groups) do
		hls = vim.tbl_extend("force", hls, require("fused.groups." .. group).load_hl(colors))
	end
	return hls
end

return { load_builtins = load_builtins }
