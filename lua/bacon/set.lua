-- Enable line numbers
vim.opt.nu = true

-- Adjust tab size 
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Make indent suck less
vim.opt.smartindent = true

-- Turn off line wrapping
vim.opt.wrap = false

-- Make long term changes undo-able
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Turn on incremental search
--vim.opt.hlsearch = false
--vim.opt.incsearch = true 

-- Control scrolling bleh...
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Make it fast?!
vim.opt.updatetime = 50

-- Make it pretty!
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
