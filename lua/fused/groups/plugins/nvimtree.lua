-- TODO: add the remaining highlights
local M = {}

M.get_hl_groups = function(cp)
	return {
		NvimTreeNormal = { bg = cp.bg },
		NvimTreeGitDirty = { fg = cp.err },
		NvimTreeGitStaged = { fg = cp.search },
		NvimTreeGitNew = { fg = cp.err },
		NvimTreeGitDeleted = { fg = cp.err },
		NvimTreeRootFolder = { fg = cp.blue },
		NvimTreeIndentMarker = { fg = cp.cp1 },
		NvimTreeSymlink = { link = "@field" },
		NvimTreeFolderName = { fg = cp.white },
		NvimTreeFolderIcon = { link = "NvimTreeFolderName" },
		NvimTreeEmptyFolderName = { fg = cp.white },
		NvimTreeOpenedFolderName = { link = "NvimTreeFolderName" },
		NvimTreeExecFile = { fg = cp.search },
		NvimtreeFileStaged = { fg = cp.search },
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
	-- NvimTreeSpecialFile
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
