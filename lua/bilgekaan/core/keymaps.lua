-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap 

keymap.set("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
keymap.set("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- use jk or jj to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- use Ctrl j and k for line up or down
keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down" })

-- Scroll down and up
keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Scroll up and center" })

keymap.set("n", "<C-p>", '"0p', { noremap = true, silent = true, desc = "Paste from yank register" })


keymap.set("n", "<Tab>", "<cmd>bn<CR>", { desc = "Go to next buffer" }) 
keymap.set("n", "<S-Tab>", "<cmd>bp<CR>", { desc = "Go to previous buffer" }) 
keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close current buffer" })

keymap.set("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

keymap.set("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
keymap.set("i", "<C-e>", "<End>", { desc = "move end of line" })
keymap.set("i", "<C-h>", "<Left>", { desc = "move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "move up" })
