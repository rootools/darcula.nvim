--- gitsigns.nvim highlight groups.
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- gitsigns
    GitSignsAdd = { fg = p.git_add },
    GitSignsChange = { fg = p.git_change },
    GitSignsDelete = { fg = p.git_delete },
    GitSignsCurrentLineBlame = { fg = p.comment },
  }
end
