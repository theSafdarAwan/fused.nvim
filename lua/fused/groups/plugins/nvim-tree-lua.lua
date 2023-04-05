-- TODO: add the remaining highlights
local M = {}

M.get_hl_groups = function(cp)
	return {
		NvimTreeNormal = { bg = cp.bg },
		NvimTreeGitDirty = { fg = cp.base11 },
		NvimTreeGitStaged = { fg = cp.base15 },
		NvimTreeGitNew = { fg = cp.base11 },
		NvimTreeGitDeleted = { fg = cp.base11 },
		NvimTreeRootFolder = { fg = cp.base10 },
		NvimTreeIndentMarker = { fg = cp.base05 },
		NvimTreeSymlink = { link = "@field" },
		NvimTreeFolderName = { fg = cp.base07 },
		NvimTreeFolderIcon = { link = "NvimTreeFolderName" },
		NvimTreeEmptyFolderName = { fg = cp.base06 },
		NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
		NvimTreeExecFile = { fg = cp.base15 },
		NvimtreeFileStaged = { fg = cp.base15 },
		NvimTreeSpecialFile = { link = "@field" },
	}
	-- NvimTreeGitMerge
	-- NvimTreeFileDirty
	-- NvimTreeFileStaged
	-- NvimTreeGitRenamed
	-- NvimTreeFileMerge
	-- NvimTreeFileRenamed
	-- NvimTreeFileNew
	-- NvimTreeFileDeleted
	-- NvimTreeOpenedFile
	-- NvimTreeImageFile
	-- NvimTreeMarkdownFile
	-- NvimTreeLicenseIcon
	-- NvimTreeYamlIcon
	-- NvimTreeTomlIcon
	-- NvimTreeGitignoreIcon
	-- NvimTreeJsonIcon
	-- NvimTreeLuaIcon
	-- NvimTreePythonIcon
	-- NvimTreeShellIcon
	-- NvimTreeJavascriptIcon
	-- NvimTreeCIcon
	-- NvimTreeReactIcon
	-- NvimTreeHtmlIcon
	-- NvimTreeRustIcon
	-- NvimTreeVimIcon
	-- NvimTreeTypescriptIcon
end
return M
