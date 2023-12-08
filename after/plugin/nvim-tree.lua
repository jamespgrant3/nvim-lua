--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup{
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
}
