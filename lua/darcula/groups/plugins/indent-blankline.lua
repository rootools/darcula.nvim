--- indent-blankline.nvim highlight groups.
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- indent-blankline
    IblIndent = { fg = p.indent_guide, nocombine = true },
    IblScope = { fg = p.indent_guide_active, nocombine = true },
  }
end
