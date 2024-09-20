return {
  'aserowy/tmux.nvim',
  opts = {},
  keys = {
    -- navigation
    -- keybindings have to match what's configures in the ~/.tmux.conf
    { "<C-k>", "<cmd>lua require('tmux').move_top()<cr>", desc = "navigate to the window above" },
    { "<C-l>", "<cmd>lua require('tmux').move_right()<cr>", desc = "navigate to the window to the right" },
    { "<C-j>", "<cmd>lua require('tmux').move_bottom()<cr>", desc = "navigate to the window below" },
    { "<C-h>", "<cmd>lua require('tmux').move_left()<cr>", desc = "navigate to the window to the left" },

    -- resize
    { "<M-k>", "<cmd>lua require('tmux').resize_top()<cr>", desc = "resize pane top" },
    { "<M-l>", "<cmd>lua require('tmux').resize_right()<cr>", desc = "resize pane right" },
    { "<M-j>", "<cmd>lua require('tmux').resize_bottom()<cr>", desc = "resize pane bottom" },
    { "<M-h>", "<cmd>lua require('tmux').resize_left()<cr>", desc = "resize pane left" },
  }
}
