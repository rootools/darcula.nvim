--- neo-tree.nvim highlight groups: file status colors (FILESTATUS_*).
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    NeoTreeGitAdded = { fg = p.git_add },
    NeoTreeGitModified = { fg = p.git_change },
    NeoTreeGitDeleted = { fg = p.git_delete },
    NeoTreeGitUntracked = { fg = p.git_untracked },
    NeoTreeGitIgnored = { fg = p.git_ignored },
    NeoTreeGitConflict = { fg = p.git_conflict },
  }
end
