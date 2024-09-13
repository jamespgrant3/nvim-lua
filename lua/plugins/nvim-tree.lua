return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
	require("nvim-tree").setup {
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
  end,
  init = function ()
    vim.keymap.set("n", "<leader>tt", "<cmd>:NvimTreeToggle<cr>", { desc = "open or close nvimtree", silent = true })
    vim.keymap.set("n", "<leader>tf", "<cmd>:NvimTreeFocus<cr>", { desc = "open nvimtree if closed", silent = true })
    vim.keymap.set("n", "<leader>ti", "<cmd>:NvimTreeFindFile<cr>", { desc = "open nvimtree on the open file", silent = true })
    vim.keymap.set("n", "<leader>tc", "<cmd>:NvimTreeCollapse<cr>", { desc = "collapse nvimtree recursively", silent = true })

    --vim.g.loaded_netrw = 1
    --vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true
  end
}



-- empty setup using defaults

