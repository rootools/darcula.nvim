--- nvim-tree.lua highlight groups: file status colors (FILESTATUS_*).
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- File and folder groups (NvimTreeGitFile*HL, NvimTreeGitFolder*HL) link to these by default
    NvimTreeGitDirtyIcon = { fg = p.git_change },
    NvimTreeGitNewIcon = { fg = p.git_add },
    NvimTreeGitStagedIcon = { fg = p.git_add },
    NvimTreeGitRenamedIcon = { fg = p.git_renamed },
    NvimTreeGitDeletedIcon = { fg = p.git_delete },
    NvimTreeGitMergeIcon = { fg = p.git_merged },
    NvimTreeGitIgnoredIcon = { fg = p.git_ignored },
    NvimTreeFolderName = { fg = p.fg_ui },
    NvimTreeOpenedFolderName = { fg = p.fg_ui },
  }
end
