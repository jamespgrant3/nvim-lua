-- view all keybindings with :map
vim.g.mapleader = " "

-- nvim tree bindings
vim.keymap.set("n", "<leader>tt", "<cmd>:NvimTreeToggle<cr>", { desc = "open or close the tree", silent = true })
vim.keymap.set("n", "<leader>tf", "<cmd>:NvimTreeFocus<cr>", { desc = "open if closed, and focus", silent = true })
vim.keymap.set("n", "<leader>ti", "<cmd>:NvimTreeFindFile<cr>",
  { desc = "move cursor to tree for current buffer", silent = true })
vim.keymap.set("n", "<leader>tc", "<cmd>:NvimTreeCollapse<cr>", { desc = "collapse tree recursively", silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move line up" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "page down keeping current line in the center of the screen" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "page down keeping current line in the center of the screen" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "map to avoid losing what is in the paste register when you `vip`" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- vertical insert, have to press esc, map c-c to esc
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "q:", "<nop>", { desc = "avoid that weird screen", silent = true })
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format the current buffer" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz",
  { desc = "display the [count] next error in the list that includes a file name" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz",
  { desc = "display the [count] previous error in the list that includes a file name" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "string replace" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "make file executable", silent = true })

vim.keymap.set("n", "<leader>q", "<cmd>:q<CR>", { desc = "quit buffer", silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "write buffer", silent = true })

-- better split window navigation
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "navigate to the window below", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "navigate to the window above", silent = true })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "navigate to the window to the right", silent = true })
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "navigate to the window to the left", silent = true })

-- new window
vim.keymap.set("n", "<leader>hw", "<C-w><C-s>", { desc = "split window horizontal", silent = true })
vim.keymap.set("n", "<leader>vw", "<C-w><C-v>", { desc = "split window vertical", silent = true })

-- move full screen, good for :help
vim.keymap.set("n", "<C-f>", "<C-w><C-o>")

-- better tab navigation
vim.keymap.set("n", "<leader>tp", "<cmd>:tabprev<CR>", { desc = "move to the previous tab", silent = true })
vim.keymap.set("n", "<leader>tn", "<cmd>:tabnext<CR>", { desc = "move to the next tab", silent = true })
vim.keymap.set("n", "<leader>ta", "<cmd>:tabnew<CR>", { desc = "new tab after current", silent = true })
vim.keymap.set("n", "<leader>tb", "<cmd>:-tabnew<CR>", { desc = "new tab before current", silent = true })
vim.keymap.set("n", "<leader>t1", "<cmd>:0tabnew<CR>", { desc = "new tab before the first", silent = true })
vim.keymap.set("n", "<leader>t0", "<cmd>:$tabnew<CR>", { desc = "new tab after the last", silent = true })
vim.keymap.set("n", "<leader>tr", "<cmd>:tabm +1<cr>", { desc = "move tab right 1 position", silent = true })
vim.keymap.set("n", "<leader>tl", "<cmd>:tabm -1<cr>", { desc = "move tab left 1 position", silent = true })

-- toggle line numbering
vim.keymap.set("n", "<leader>ln", "<cmd>:set rnu!<CR>", { desc = "toggle relative line numbering", silent = true })

-- prettier
vim.keymap.set("n", "<leader>a", "<cmd>%!prettier --stdin-filepath %<CR>", { silent = true })
vim.keymap.set("n", "<leader>ab", "<cmd>%!prettier components pages posts styles --write<CR>", { silent = true })

-- git worktree
-- <Enter> - switches to that worktree
-- <C-d> - deletes that worktree
-- <C-f> - toggles forcing of the next deletion
vim.keymap.set("n", "<leader>wt", "<cmd>:lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  { desc = "switch git worktree", silent = true })
vim.keymap.set("n", "<leader>wtc", "<cmd>:lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  { desc = "create a new git worktree", silent = true })

-- update packer
vim.keymap.set("n", "<leader>pu", "<cmd>:PackerUpdate<CR>", { desc = "run a packer update" })

-- update mason (lsp)
vim.keymap.set("n", "<leader>mu", "<cmd>:Mason<CR>", { desc = "run a mason update" })

-- update brew
vim.keymap.set("n", "<leader>bu", "<cmd>:!brew upgrade<CR>", { desc = "run a brew upgrade" })

-- new buffer
vim.keymap.set("n", "<leader>bv", "<cmd>:vnew<cr>", { desc = "new buffer vertical ", silent = true })
vim.keymap.set("n", "<leader>bh", "<cmd>:new<cr>", { desc = "new buffer horizontal", silent = true })
