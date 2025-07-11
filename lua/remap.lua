-- Set leader key
vim.g.mapleader = " "

-- Move selected line up/down easily
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeps mouse in the same place while "appending" other lines with a space (i.e. normal 'J' stuff)
vim.keymap.set("n", "J", "mzJ`z")
-- Keeps cursor in the middle of the screen when jumping by half pages (i.e. ctrl-d and ctrl-u)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- When searching in file (i.e. press '/' and type) keep cursor in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Deletes the selected text without copying it and then pastes the current clipboard item into that selection
-- ^ makes it so that you don't lose what you initially copied
vim.keymap.set("v", "<leader>p", [["_dP]])
-- Deletes the current selection into the void (i.e. without copying to clipboard)
vim.keymap.set("v", "<Del>", '"_d')

-- Easier to spam macro
vim.keymap.set("n", "<C-q>", "@q")
-- Auto-reselects text when indenting, to make it easier to do multiple times
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Uses the system clipboard for yanking/copying (otherwise you'd have to press ctrl+shift+v/+c)
vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("v", "<leader>y", [["+y]])
-- Deletes into the void (i.e. don't copy/yank)
-- vim.keymap.set('n', '<leader>d', [["_d]])
vim.keymap.set("v", "<leader>d", [["_d]])
