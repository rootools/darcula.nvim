--- Classic Vim syntax groups.
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- Classic syntax
    Comment = { fg = p.comment },
    Constant = { fg = p.constant },
    String = { fg = p.string },
    Character = { fg = p.string },
    Number = { fg = p.number },
    Boolean = { fg = p.keyword },
    Float = { fg = p.number },
    Identifier = { fg = p.fg },
    Function = { fg = p.func_decl },
    Statement = { fg = p.keyword },
    Conditional = { fg = p.keyword },
    Repeat = { fg = p.keyword },
    Label = { fg = p.keyword },
    Operator = { fg = p.fg },
    Keyword = { fg = p.keyword },
    Exception = { fg = p.keyword },
    PreProc = { fg = p.annotation },
    Include = { fg = p.keyword },
    Define = { fg = p.keyword },
    Macro = { fg = p.annotation },
    PreCondit = { fg = p.annotation },
    Type = { fg = p.fg },
    StorageClass = { fg = p.keyword },
    Structure = { fg = p.keyword },
    Typedef = { fg = p.keyword },
    Special = { fg = p.keyword },
    SpecialChar = { fg = p.keyword },
    Tag = { fg = p.tag },
    Delimiter = { fg = p.fg },
    SpecialComment = { fg = p.doc_comment, italic = true },
    Debug = { fg = p.error },
    Underlined = { fg = p.link, underline = true },
    Ignore = { fg = p.whitespace },
    Error = { fg = p.error },
    Todo = { fg = p.todo, bold = true, italic = true },
  }
end
