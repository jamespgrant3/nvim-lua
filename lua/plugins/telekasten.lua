local home = vim.fn.expand("~/repos/state/notes")
local templates = vim.fn.expand("~/repos/nvim/master/lua/plugins/telekasten/templates")
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>nf', "<cmd>Telekasten find_notes<cr>", opts)
map('n', '<leader>ng', "<cmd>Telekasten search_notes<cr>", opts)
-- map('n', '<leader>nt', "<cmd>Telekasten goto_today<cr>", opts)
map('n', '<leader>nl', "<cmd>Telekasten follow_link<cr>", opts)
map('n', '<leader>nn', "<cmd>Telekasten new_note<cr>", opts)
map('n', '<leader>nt', "<cmd>Telekasten new_templated_note<cr>", opts)
-- map('n', '<leader>nc', "<cmd>Telekasten show_calendar<cr>", opts)
map('n', '<leader>nb', "<cmd>Telekasten show_backlinks<cr>", opts)
map('n', '<leader>nI', "<cmd>Telekasten insert_img_link<cr>", opts)
map('n', '<leader>np', "<cmd>Telekasten panel<cr>", opts)
map('n', '<leader>nr', "<cmd>Telekasten rename_note<cr>", opts)

return {
	"renerocksai/telekasten.nvim",
	dependencies = { "nvim-telescope/telescope.nvim" },
	lazy = false,
	opts = {
		home = home,
		dailies = home .. "/dailies",
		weeklies = home .. "/weeklies",
		templates = templates,
		template_new_daily = templates .. "/new_daily.md",
		template_new_note = templates .. "/new.md",
		template_new_weekly = templates .. "/new_weekly.md",
	}
}
