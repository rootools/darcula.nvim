--- Merges all highlight group modules into one table.
local core = { "base", "syntax", "treesitter", "lsp" }

-- Names match the files in `groups/plugins/` and the keys of `opts.plugins`.
local plugins = { "gitsigns", "telescope", "cmp", "blink", "neo-tree", "nvim-tree", "indent-blankline" }

---@param p table palette from `darcula.palette`
---@param opts? { plugins?: table<string, boolean> } `plugins.<name> = false` disables that plugin's groups
---@return table<string, vim.api.keyset.highlight>
return function(p, opts)
  local enabled = opts and opts.plugins or {}
  local modules = vim.deepcopy(core)
  for _, name in ipairs(plugins) do
    if enabled[name] ~= false then
      modules[#modules + 1] = "plugins." .. name
    end
  end

  local groups = {}
  for _, name in ipairs(modules) do
    for group, spec in pairs(require("darcula.groups." .. name)(p)) do
      groups[group] = spec
    end
  end
  return groups
end
