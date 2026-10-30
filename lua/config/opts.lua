-- fat cursor in insert mode
vim.opt.guicursor = ""

-- Sync the unnamed register with the system clipboard: plain y/d/p all go
-- through pbcopy/pbpaste, so terminal <-> nvim copy/paste just works.
vim.opt.clipboard = "unnamedplus"

-- set line number, and have them relative
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- border for all floating windows (lsp hover, completion docs, telescope, ...)
vim.opt.winborder = "rounded"

vim.opt.scrolloff = 2
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- briefly highlight yanked text (replaces yanky.nvim)
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.hl.on_yank({ timeout = 250 })
	end,
})

--vim.opt.updatetime = 50
