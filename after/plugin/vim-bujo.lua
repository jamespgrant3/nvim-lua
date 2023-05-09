vim.keymap.set("n", "<leader>td", "<cmd>silent :Todo<cr>", { desc = "open or close the todo list" })

-- add
vim.keymap.set("n", "<C-a>", "<Plug>BujoAddnormal", { desc = "add an item in normal mode" })
vim.keymap.set("i", "<C-a>", "<Plug>BujoAddinsert", { desc = "add an item in insert mode" })

-- mark done
vim.keymap.set("n", "<C-x>", "<Plug>BujoChecknormal", { desc = "remove an item in normal mode" })
vim.keymap.set("i", "<C-x>", "<Plug>BujoCheckinsert", { desc = "remove an item in insert mode" })

vim.g['bujo#window_width'] = 100
