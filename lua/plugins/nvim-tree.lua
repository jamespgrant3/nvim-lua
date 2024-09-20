return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    disable_netrw = false,
    view = {
      relativenumber = true,
      width = {
        min = 50,
      }
    },
    actions = {
      open_file = {
        quit_on_open = true,
        window_picker = {
          enable = false
        }
      }
    }
  },
  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  keys = {
    { "<leader>tt", "<cmd>:NvimTreeToggle<cr>", desc = "open or close nvimtree" },
    { "<leader>tf", "<cmd>:NvimTreeFocus<cr>", desc = "open nvimtree if closed" },
    { "<leader>ti", "<cmd>:NvimTreeFindFile<cr>", desc = "open nvimtree on the open file" },
    { "<leader>tc", "<cmd>:NvimTreeCollapse<cr>", desc = "collapse nvimtree recursively" },
  }
}
