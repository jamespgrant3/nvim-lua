-- view all keybindings with :map
vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "move line down" })
vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "move line up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "appends line below with a space" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "page down screen centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "page up screen centered" })
vim.keymap.set("n", "n", "nzzzv", { desc = "keeps search terms centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "keeps search terms centered" })

-- greatest remap ever
vim.keymap.set(
	"x",
	"<leader>p",
	[["_dP]],
	{ desc = "map to avoid losing what is in the paste register when you `vip`" }
)

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "copies to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "copies to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete to void register" })

-- vertical insert, have to press esc, map c-c to esc
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "q:", "<nop>", { desc = "avoid that weird screen", silent = true })
vim.keymap.set("n", "Q", "<nop>")

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<cr>zz", { desc = "display the [count] next error in the list that includes a file name" })
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<cr>zz", { desc = "display the [count] previous error in the list that includes a file name" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<cr>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<cr>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "string replace" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<cr>", { desc = "make file executable", silent = true })

-- new window
vim.keymap.set("n", "<leader>hw", "<C-w><C-s>", { desc = "split window horizontal", silent = true })
vim.keymap.set("n", "<leader>vw", "<C-w><C-v>", { desc = "split window vertical", silent = true })

-- move full screen, good for :help
vim.keymap.set("n", "<C-f>", "<C-w><C-o>")

-- tab navigation
vim.keymap.set("n", "-", "<cmd>:tabprev<cr>", { desc = "move to the previous tab", silent = true })
vim.keymap.set("n", "=", "<cmd>:tabnext<cr>", { desc = "move to the next tab", silent = true })
vim.keymap.set("n", "<leader>ta", "<cmd>:tabnew<cr>", { desc = "new tab after current", silent = true })
vim.keymap.set("n", "<leader>tb", "<cmd>:-tabnew<cr>", { desc = "new tab before current", silent = true })
vim.keymap.set("n", "<leader>t0", "<cmd>:0tabnew<cr>", { desc = "new tab before the first", silent = true })
vim.keymap.set("n", "<leader>t$", "<cmd>:$tabnew<cr>", { desc = "new tab after the last", silent = true })
vim.keymap.set("n", "<leader>tr", "<cmd>:tabm +1<cr>", { desc = "move tab right 1 position", silent = true })
vim.keymap.set("n", "<leader>tl", "<cmd>:tabm -1<cr>", { desc = "move tab left 1 position", silent = true })

-- toggle line numbering
vim.keymap.set("n", "<leader>ln", "<cmd>:set rnu!<cr>", { desc = "toggle relative line numbering", silent = true })

-- updates
vim.keymap.set("n", "<leader>lu", "<cmd>:Lazy<cr>", { desc = "lazy update" })
vim.keymap.set("n", "<leader>mu", "<cmd>:Mason<cr>", { desc = "mason update" })

-- buffer
vim.keymap.set("n", "<leader>bh", "<cmd>:leftabove vsplit<cr>", { desc = "split buffer left", silent = true })
vim.keymap.set("n", "<leader>bl", "<cmd>:rightbelow vsplit<cr>", { desc = "split buffer right", silent = true })
vim.keymap.set("n", "<leader>bk", "<cmd>:leftabove split<cr>", { desc = "split buffer above", silent = true })
vim.keymap.set("n", "<leader>bj", "<cmd>:rightbelow split<cr>", { desc = "split buffer below", silent = true })
vim.keymap.set("n", "<leader>q", "<cmd>:q<cr>", { desc = "quit buffer", silent = true })
vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "write buffer", silent = true })
vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "previous buffer", silent = true })
vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "next buffer", silent = true })
