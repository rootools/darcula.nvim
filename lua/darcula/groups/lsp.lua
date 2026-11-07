--- Diagnostics and LSP.
---@param p table palette from `darcula.palette`
---@return table<string, vim.api.keyset.highlight>
return function(p)
  return {
    -- Diagnostics
    DiagnosticError = { fg = p.error },
    DiagnosticWarn = { fg = p.warn },
    DiagnosticInfo = { fg = p.info },
    DiagnosticHint = { fg = p.hint },
    DiagnosticOk = { fg = p.ok },
    DiagnosticVirtualTextError = { fg = p.error },
    DiagnosticVirtualTextWarn = { fg = p.warn },
    DiagnosticVirtualTextInfo = { fg = p.info },
    DiagnosticVirtualTextHint = { fg = p.hint },
    DiagnosticVirtualTextOk = { fg = p.ok },
    DiagnosticUnderlineError = { undercurl = true, sp = p.error_effect },
    DiagnosticUnderlineWarn = { undercurl = true, sp = p.warn_effect },
    DiagnosticUnderlineInfo = { undercurl = true, sp = p.info_effect },
    DiagnosticUnderlineHint = { undercurl = true, sp = p.hint },
    DiagnosticUnderlineOk = { undercurl = true, sp = p.ok },
    DiagnosticUnnecessary = { fg = p.unused },
    DiagnosticDeprecated = { strikethrough = true, sp = p.deprecated },

    -- LSP
    LspReferenceText = { bg = p.ref_read },
    LspReferenceRead = { bg = p.ref_read },
    LspReferenceWrite = { bg = p.ref_write },
    LspReferenceTarget = { bg = p.ref_read },
    LspInlayHint = { fg = p.hint, bg = p.hint_bg },
    LspCodeLens = { fg = p.comment },
    LspCodeLensSeparator = { fg = p.comment },
    LspSignatureActiveParameter = { fg = p.param_hint_fg, bg = p.param_hint_bg },
    ["@lsp.mod.deprecated"] = { strikethrough = true },
  }
end
