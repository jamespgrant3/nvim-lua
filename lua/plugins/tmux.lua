return {
  'aserowy/tmux.nvim',
  config = function()
    require("tmux").setup()
    -- keybindings have to match what's configures in the ~/.tmux.conf
    -- navigation
    vim.keymap.set("n", "<C-h>", "<cmd>lua require('tmux').move_left()<cr>", { desc = "navigate to the window to the left", silent = true })
    vim.keymap.set("n", "<C-j>", "<cmd>lua require('tmux').move_bottom()<cr>", { desc = "navigate to the window below", silent = true })
    vim.keymap.set("n", "<C-k>", "<cmd>lua require('tmux').move_top()<cr>", { desc = "navigate to the window above", silent = true })
    vim.keymap.set("n", "<C-l>", "<cmd>lua require('tmux').move_right()<cr>", { desc = "navigate to the window to the right", silent = true })

    -- resize
    vim.keymap.set("n", "<C-a>", "<cmd>lua require('tmux').resize_left()<cr>", { desc = "", silent = true })
    vim.keymap.set("n", "<C-z>", "<cmd>lua require('tmux').resize_bottom()<cr>", { desc = "", silent = true })
    vim.keymap.set("n", "<C-w>", "<cmd>lua require('tmux').resize_top()<cr>", { desc = "", silent = true })
    vim.keymap.set("n", "<C-s>", "<cmd>lua require('tmux').resize_right()<cr>", { desc = "", silent = true })
  end,
}
