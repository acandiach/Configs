require("abel.plugins-setup")

require("abel.core.options")
require("abel.core.keymaps")
require("abel.core.colorscheme")

require("abel.plugins.autopairs")
require("abel.plugins.bufferline")
require("abel.plugins.comment")
require("abel.plugins.gitsigns")
require("abel.plugins.indent_blankline")
require("abel.plugins.lualine")
require("abel.plugins.nvim-cmp")
require("abel.plugins.nvim-colorizer")
require("abel.plugins.nvim-tree")
require("abel.plugins.telescope")
require("abel.plugins.treesitter")
require("abel.plugins.undotree")
require("abel.plugins.treesitter")

require("abel.plugins.lsp.mason")
require("abel.plugins.lsp.lspsaga")
require("abel.plugins.lsp.lspconfig")
require("abel.plugins.lsp.null-ls")

-- Autocmd
-- Highlight copied Text
vim.cmd([[
augroup AuYank
    autocmd!
    autocmd TextYankPost *
	\ lua vim.highlight.on_yank{higroup = "IncSearch", timeout = 400, on_visual = true}
augroup END
]])
