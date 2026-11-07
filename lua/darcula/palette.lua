--- Islands Darcula (JetBrains) palette.
---
--- Sources (JetBrains/intellij-community, Apache-2.0):
---   * UI: platform/platform-resources/src/themes/islands/ManyIslandsDarcula.theme.json
---   * Editor: the "Darcula" scheme in platform/platform-resources/src/DefaultColorSchemesManager.xml
local M = {
  -- Background and surfaces
  bg = "#2B2B2B", -- TEXT.BACKGROUND, ToolWindowBackground
  bg_frame = "#3C3F41", -- BackgroundLight: frame between the "islands", status bar, toolbar
  bg_lightest = "#4E5254", -- BackgroundLightest
  bg_popup = "#333333", -- PopupBackground
  bg_float_border = "#474747", -- PopupBorder
  cursorline = "#323232", -- CARET_ROW_COLOR

  -- Selection
  selection = "#214283", -- SELECTION_BACKGROUND
  selection_inactive = "#4C4F56", -- SELECTION_BACKGROUND_INACTIVE
  selection_ui = "#304C80", -- SelectionActive (menus, lists)
  tab_selected = "#2B405A", -- EditorTabs.underlinedTabBackground

  -- Text
  fg = "#A9B7C6", -- DEFAULT_IDENTIFIER
  fg_ui = "#BBBBBB", -- ForegroundDefault
  fg_dim = "#9DA0A8", -- StatusBar.Widget.foreground
  line_nr = "#606366", -- LINE_NUMBERS_COLOR
  line_nr_caret = "#A4A3A3", -- LINE_NUMBER_ON_CARET_ROW_COLOR
  whitespace = "#606060", -- WHITESPACES
  indent_guide = "#373737", -- INDENT_GUIDE
  indent_guide_active = "#505050", -- SELECTED_INDENT_GUIDE
  fold_fg = "#8C8C8C",
  fold_bg = "#3A3A3A",

  -- Syntax
  keyword = "#CC7832",
  string = "#6A8759",
  number = "#6897BB",
  comment = "#808080",
  doc_comment = "#629755",
  constant = "#9876AA", -- constants and fields
  func_decl = "#FFC66D",
  builtin = "#8888C6", -- Python built-in functions
  annotation = "#BBB529", -- annotations, decorators
  type_param = "#507874",
  self = "#94558D",
  tag = "#E8BF6A", -- XML/HTML tags, regexp groups
  attr_name = "#BABABA",
  entity = "#6D9CBE",
  link = "#287BDE", -- HYPERLINK_ATTRIBUTES
  todo = "#A8C023",

  -- States
  error = "#DB5C5C",
  error_effect = "#BC3F3C", -- ERRORS_ATTRIBUTES (underline)
  warn = "#D6AE58",
  warn_effect = "#BE9117",
  info = "#589DF6",
  info_effect = "#AEAE80",
  ok = "#5FAD65",
  hint = "#787878", -- INLAY_DEFAULT
  hint_bg = "#3B3B3B",
  unused = "#72737A", -- NOT_USED_ELEMENT_ATTRIBUTES
  deprecated = "#C3C3C3", -- DEPRECATED_ATTRIBUTES
  param_hint_fg = "#ACACAC", -- INLINE_PARAMETER_HINT_CURRENT
  param_hint_bg = "#305D78",

  -- Search and highlighting
  search = "#32593D", -- TEXT_SEARCH_RESULT_ATTRIBUTES
  search_current = "#3C704B",
  match_paren_fg = "#FFEF28",
  match_paren_bg = "#3B514D",
  ref_read = "#344134", -- IDENTIFIER_UNDER_CARET
  ref_write = "#40332B", -- WRITE_IDENTIFIER_UNDER_CARET

  -- Diff / VCS
  diff_add = "#294436",
  diff_change = "#385570",
  diff_text = "#43698D",
  diff_delete = "#484A4A",
  git_add = "#629755",
  git_change = "#6897BB",
  git_delete = "#656E76",
  git_merged = "#9876AA",
  git_conflict = "#D5756C",
  git_untracked = "#D1675A",
  git_ignored = "#848504",
  git_renamed = "#3A8484", -- FILESTATUS_RENAMED
}

--- Console ANSI colors (CONSOLE_*_OUTPUT).
M.terminal = {
  M.bg, "#F0524F", "#5C962C", "#A68A0D", "#3993D4", "#A771BF", "#00A3A3", M.fg_ui,
  "#595959", "#FF4050", "#4FC414", "#E5BF00", "#1FB0FF", "#ED7EED", "#00E5E5", "#FFFFFF",
}

return M
