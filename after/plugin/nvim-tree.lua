--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup{
  disable_netrw = false,
  view = {
    float = {
      enable = true,
      open_win_config = {
        width = 90,
        height = 40
      }
    }
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false
      }
    }
  }
}
