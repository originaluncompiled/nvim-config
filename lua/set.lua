vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
-- vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.clipboard = { "unnamed", "unnamedplus" } -- Make NeoVim always use the system clipboard
vim.opt.cmdheight = 2
-- Show errors/warnings next to line
vim.diagnostic.config({ virtual_text = { prefix = "■" } })
