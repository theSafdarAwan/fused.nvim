-- TODO: add the remaining highlights
local M = {}

M.load_hl = function(cp)
	return {
		NvimTreeNormal = { bg = cp.bg },
		NvimTreeGitDirty = { fg = cp.base09 },
		NvimTreeGitStaged = { fg = cp.base13 },
		NvimTreeGitNew = { fg = cp.base09 },
		NvimTreeGitDeleted = { fg = cp.base09 },
		NvimTreeRootFolder = { fg = cp.base08 },
		NvimTreeIndentMarker = { fg = cp.base03 },
		NvimTreeSymlink = { link = "@field" },
		NvimTreeFolderName = { fg = cp.base05 },
		NvimTreeFolderIcon = { link = "NvimTreeFolderName" },
		NvimTreeEmptyFolderName = { fg = cp.base04 },
		NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
		NvimTreeExecFile = { fg = cp.base13 },
		NvimtreeFileStaged = { fg = cp.base13 },
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
