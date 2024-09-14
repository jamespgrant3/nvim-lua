return {
  'ThePrimeagen/harpoon',
  branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup()

    vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "harpoon list" })
    vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "harpoon append" })

    vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "harpoon item 1" })
    vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "harpoon item 2" })
    vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "harpoon item 3" })
    vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "harpoon item 4" })
    vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end, { desc = "harpoon item 5" })
  end
}
