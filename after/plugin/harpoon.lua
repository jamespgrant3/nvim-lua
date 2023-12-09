local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file, { desc = "add a file to harpoon" })
vim.keymap.set("n", "<leader>hl", ui.toggle_quick_menu, { desc = "toggle harpoon" })

vim.keymap.set("n", "<leader>hn", ui.nav_next, { desc = "next item in harpoon" })
vim.keymap.set("n", "<leader>hp", ui.nav_prev, { desc = "prev item in harpoon" })
