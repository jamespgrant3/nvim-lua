vim.g.mapleader = " "
vim.keymap.set("n", "<leader>nr", vim.cmd.Ex, { desc = "open [n]et[r]w" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "map to avoid losing what is in the paste register when you `vip`" })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- vertical insert, have to press esc, map c-c to esc
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "Q", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>q", "<cmd>silent :q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- better split window navigation
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")

-- move full screen, good for :help
vim.keymap.set("n", "<C-f>", "<C-w><C-o>")

-- better tab navigation
vim.keymap.set("n", "-", "<cmd>silent :tabprev<CR>")
vim.keymap.set("n", "=", "<cmd>silent :tabnext<CR>")
vim.keymap.set("n", "<leader>nt", "<cmd>silent :tabnew<CR>")

-- toggle line numbering
vim.keymap.set("n", "<leader>rn", "<cmd>silentn:set rnu!<CR>")
