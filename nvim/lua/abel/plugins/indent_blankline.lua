local status, blankline = pcall(require, "indent_blankline")
if not status then
  return
end

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

blankline.setup {
  --char = "|",
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  use_treesitter = true,
  max_indent_increase = 1,
  show_first_indent_level = true,
  show_trailing_blankline_indent = false,
  char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
  },
}

