-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup {

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- enable indentation
  indent = { enable = true },

  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    -- Enable syntax highlighting
    enable = true,

    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  -- A list of parser names, or "all"
  ensure_installed = {
    "lua",
    "python",
    "ruby",
    "javascript",
    "css",
    "html",
    "json",
    "vim",
    "gitignore"
  },
}
