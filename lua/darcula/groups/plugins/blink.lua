--- blink.cmp highlight groups.
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- blink.cmp
    BlinkCmpLabelMatch = { fg = p.func_decl, bold = true },
    BlinkCmpLabelDeprecated = { fg = p.comment, strikethrough = true },
    BlinkCmpLabelDetail = { fg = p.comment },
    BlinkCmpGhostText = { fg = p.comment },
  }
end
