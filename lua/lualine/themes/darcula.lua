local p = require("darcula.palette")

local function mode(color)
  return {
    a = { fg = p.bg, bg = color, gui = "bold" },
    b = { fg = p.fg_ui, bg = p.bg_lightest },
    c = { fg = p.fg_dim, bg = p.bg_frame },
  }
end

return {
  normal = mode(p.number),
  insert = mode(p.string),
  visual = mode(p.constant),
  replace = mode(p.error),
  command = mode(p.func_decl),
  terminal = mode(p.keyword),
  inactive = {
    a = { fg = p.comment, bg = p.bg_frame },
    b = { fg = p.comment, bg = p.bg_frame },
    c = { fg = p.comment, bg = p.bg_frame },
  },
}
