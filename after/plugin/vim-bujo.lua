vim.keymap.set("n", "<leader>tdl", "<cmd>silent :Todo<cr>", { desc = "open or close the tree" })
vim.keymap.set("n", "<leader>tda", "<plug>silent :BujoAddnormal", { desc = "open or close the tree" })

-- add
vim.keymap.set("n", "<C-a>", "<Plug>BujoAddnormal")
vim.keymap.set("i", "<C-a>", "<Plug>BujoAddinsert")

-- mark done
vim.keymap.set("n", "<C-x>", "<Plug>BujoChecknormal")
vim.keymap.set("i", "<C-x>", "<Plug>BujoCheckinsert")

vim.g.bujo_window_width = 40
