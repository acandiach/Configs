require "plugins"

vim.g.mapleader = " "

-- THEMES

------Grubvox Material------
vim.g['gruvbox_material_background'] = 'hard'
vim.g['gruvbox_material_better_performance'] = 1
vim.g['gruvbox_material_cursor'] = 'auto'
vim.cmd("colorscheme gruvbox-material")

------ OneDark ------
--vim.cmd("colorscheme onedark")

------ Tokyonight ------
--vim.cmd[[colorscheme tokyonight]]
-- "moon", "storm" or "night"
--require("tokyonight").setup({style = "night"})

----- Material ------
--vim.g['material_theme_style'] = 'darker-community'
--vim.cmd("colorscheme material")

-- SETTINGS
--vim.opt.guicursor = ""
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.numberwidth = 1

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.showtabline = 2             -- always show tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartcase = true            -- smart case
vim.opt.mouse = "a"                 -- allow the mouse to be used in neovim

vim.opt.cursorline = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.clipboard = 'unnamedplus'
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.laststatus = 2
vim.opt.inccommand="split"

vim.opt.wrap = true
vim.opt.linebreak =true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = "120"
vim.opt.list = true
vim.opt.updatetime = 50

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true           -- ignore case in search patterns 

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
--for treesitter
--vim.opt.foldmethod="expr"
--vim.opt.foldexpr="nvim_treesitter#foldexpr()"

--for nvim tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- KEYMAPS

-- Exit insert mode
vim.keymap.set('i', 'jk', '<Esc>')
-- save, quit and unselect search
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>r', ':nohl<CR>')
-- Position cursor End line and Position cursor in the line first caracater
vim.keymap.set('n', '<leader>0', '$')
vim.keymap.set('n', '<leader>p', '^')

-- Search with NvimTree --
vim.keymap.set("n", "<leader>nm", ":NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>")

-- Move in Buffers 
vim.keymap.set('n', '<S-h>', ':bp<CR>')
vim.keymap.set('n', '<S-l>', ':bn<CR>')
vim.keymap.set("n", "<S-d>", ":bdelete<CR>")

-- Move text up and down normal mode
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==")
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==")

-- Move text up and down visual mode
vim.keymap.set("v", "p", '"_dP')
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==")

--Move text up and down visula mode but Indenting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Move With Tmux-navigator
vim.keymap.set("n", '<C-h>', ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", '<C-j>', ":TmuxNavigateDown<CR>")
vim.keymap.set("n", '<C-k>', ":TmuxNavigateUp<CR>")
vim.keymap.set("n", '<C-l>', ":TmuxNavigateRight<CR>")

-- Block arrow keys
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")

-- Indenting in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Resize windows with arrows keys
vim.keymap.set("n", "<right>", ":vertical resize -5<CR>")
vim.keymap.set("n", "<left>", ":vertical resize +5<CR>")
vim.keymap.set("n", "<up>", ":resize -5<CR>")
vim.keymap.set("n", "<down>", ":resize +5<CR>")

-- Open Terminal new Tab
vim.keymap.set("n", '<C-t>', ":vert:split<CR>:terminal<CR>")

-- quit terminal mode
--vim.cmd([[tnoremap <C-i> <c-\><c-n>]])

-- Desactivate or Activate Transparenting
vim.keymap.set("n", "<leader>ty", ":TransparentToggle<CR>")

-- Faster Scrolling
vim.keymap.set("n", '<leader>j', "10j")
vim.keymap.set("n", '<leader>k', "10k")

--vim.keymap.set("n", '<C-i>', "<c-'\'><c-n>")
-- For multicursor

--Basic usage

--select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
--create cursors vertically with Ctrl-Down/Ctrl-Up
--select one character at a time with Shift-Arrows
--press n/N to get next/previous occurrence
--press [/] to select next/previous cursor
--press q to skip current and get next occurrence
--press Q to remove current cursor/selection

vim.cmd([[
    let g:VM_maps = {}
    let g:VM_maps['Find Under']         = '<C-s>'  " replace C-s
    let g:VM_maps['Find Subword Under'] = '<C-s>'  " replace visual C-s
    let g:VM_mouse_mappings = 1
]])

-- Autocmd
-- Highlight copied Text 
vim.cmd [[
augroup AuYank
    autocmd!
    autocmd TextYankPost *
	\ lua vim.highlight.on_yank{higroup = "IncSearch", timeout = 400, on_visual = true}
augroup END
]]

