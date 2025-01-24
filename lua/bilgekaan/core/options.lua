vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.breakindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = true
opt.cursorline = true -- highlight the current cursor line
opt.cursorlineopt = "number"
opt.showbreak = "  "
opt.breakat = " "
opt.linebreak = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>[]hl")

-- Folding settings
-- opt.foldmethod = "indent"
opt.foldcolumn = "1" -- Show fold column
opt.foldlevel = 99 -- Set max fold level
opt.foldlevelstart = 99 -- Start with all folds open
opt.foldenable = true -- Enable folds
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

opt.undofile = true
