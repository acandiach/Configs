-- set leader key to space
vim.g.mapleader = " "

---------------------
-- General Keymaps
---------------------

-- Exit insert mode
vim.keymap.set("i", "jk", "<Esc>")

-- save, quit and unselect search
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>r", ":nohl<CR>")

-- Position cursor End line and Position cursor in the line first caracater
vim.keymap.set("n", "<leader>0", "$")
vim.keymap.set("n", "<leader>p", "^")

-- Move in Buffers
vim.keymap.set("n", "<S-h>", ":bp<CR>")
vim.keymap.set("n", "<S-l>", ":bn<CR>")
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

-- Open Terminal new Tab
vim.keymap.set("n", "<C-t>", ":vert:split<CR>:terminal<CR>")
-- quit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

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

-- Desactivate or Activate Transparenting
-- vim.keymap.set("n", "<leader>ty", ":TransparentToggle<CR>")

-- Faster Scrolling
vim.keymap.set("n", "<leader>j", "10j")
vim.keymap.set("n", "<leader>k", "10k")

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
-- toggle split window maximization
vim.keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- Search with NvimTree
vim.keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>")

-- TELESCOPE
-- find files within current working directory, respects .gitignore
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")

-- find string in current working directory as you type
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")

-- find string under cursor in current working directory
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")

-- list open buffers in current neovim instance
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")

-- list available help tags
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- TELESCOPE GIT commands
-- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")

-- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>")

-- list git branches (use <cr> to checkout) ["gb" for git branch]
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")

-- list current changes per file with diff preview ["gs" for git status]
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")

-- Restart LSP server
-- mapping to restart lsp if necessary
vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>")

-- Move With Tmux-navigator
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>")
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>")

-- For multicursor

--Basic usage

--select words with Ctrl-s (like Ctrl-d in Sublime Text/VS Code)
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

-- ReplaceWithRegister:
-- uso yw para copiar la palabra y luego me posiciono en la siguiente palabra
-- y la reemplazo con la anterior palabra usando grw
