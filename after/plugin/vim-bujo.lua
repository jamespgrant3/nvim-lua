vim.keymap.set("n", "<leader>td", "<cmd>silent :Todo<cr>", { desc = "toggle bujo" })

-- add
vim.keymap.set("n", "<C-a>", "<Plug>BujoAddnormal", { desc = "add an item, in normal mode, to bujo" })
vim.keymap.set("i", "<C-a>", "<Plug>BujoAddinsert", { desc = "add an item, in insert mode, to bujo" })

-- mark done
vim.keymap.set("n", "<C-x>", "<Plug>BujoChecknormal", { desc = "remove an item, in normal mode, to bujo" })
vim.keymap.set("i", "<C-x>", "<Plug>BujoCheckinsert", { desc = "remove an item, in insert mode, to bujo" })

vim.g['bujo#window_width'] = 100
