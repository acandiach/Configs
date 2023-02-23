local opt = vim.opt

--General settings
opt.fileencoding = "utf-8" -- the encoding written to a file
opt.showmode = false -- we don't need to see things like-- INSERT -- anymore
opt.mouse = "a" -- allow the mouse to be used in neovim
opt.iskeyword:append("-") -- consider string-string as whole word

--line number
opt.number = true
opt.relativenumber = true

opt.ruler = true
opt.numberwidth = 1

-- tabs & indentation
opt.autoindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
-- opt.showtabline = 2 -- always show tabs
-- opt.softtabstop = 2

-- line wrapping
opt.wrap = true
opt.linebreak = true

-- search settings
opt.smartcase = true -- smart case
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true -- ignore case in search patterns

-- cursor & cursor line
opt.cursorline = true
--opt.guicursor = ""

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
-- opt.colorcolumn = "120"

-- Clipboard
-- opt.clipboard = "unnamedplus"
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

opt.showcmd = true
opt.showmatch = true
opt.laststatus = 2
opt.inccommand = "split"

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.scrolloff = 8
opt.list = true
opt.updatetime = 50

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
