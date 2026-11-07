--- nvim-cmp highlight groups.
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- nvim-cmp
    CmpItemAbbr = { fg = p.fg_ui },
    CmpItemAbbrMatch = { fg = p.func_decl, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.func_decl, bold = true },
    CmpItemAbbrDeprecated = { fg = p.comment, strikethrough = true },
    CmpItemMenu = { fg = p.comment },
    CmpItemKind = { fg = p.fg_dim },
  }
end
