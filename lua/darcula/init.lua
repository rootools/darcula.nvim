local M = {}

---@class darcula.Config
---@field styles? { comments?: vim.api.keyset.highlight, diagnostics?: vim.api.keyset.highlight } extra attributes (`italic`, `bold`, ...) for comments and inline diagnostic messages; both are italic by default
---@field plugins? table<string, boolean> `<plugin> = false` disables that plugin's highlight groups
M.config = { styles = { comments = { italic = true }, diagnostics = { italic = true } }, plugins = {} }

--- Sets options. Call it before `:colorscheme darcula`.
---@param opts? darcula.Config
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

--- Applies the darcula colorscheme.
function M.load()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "darcula"

  local palette = require("darcula.palette")
  for i, color in ipairs(palette.terminal) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end

  for name, spec in pairs(require("darcula.groups")(palette, M.config)) do
    vim.api.nvim_set_hl(0, name, spec)
  end
end

return M
