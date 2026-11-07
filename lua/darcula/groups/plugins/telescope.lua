--- telescope.nvim highlight groups.
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- telescope
    TelescopeSelection = { bg = p.selection_ui },
    TelescopeMatching = { fg = p.func_decl, bold = true },
    TelescopePromptPrefix = { fg = p.keyword },
    TelescopeTitle = { fg = p.fg_ui, bold = true },
  }
end
