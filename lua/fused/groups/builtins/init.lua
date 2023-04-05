local function load_builtins(colors)
	local hls = {}
	local groups = {
		"editor",
		"syntax",
		"lsp",
	}
	for _, group in ipairs(groups) do
		hls[group] = require("fused.groups.builtins." .. group).load_hl(colors)
	end
	return hls
end

return { load_builtins = load_builtins }
