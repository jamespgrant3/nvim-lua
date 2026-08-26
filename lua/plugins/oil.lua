local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader>o", "<cmd>Oil<cr>", opts)

vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
})

-- Only non-default options are listed here; everything else is oil's default.
-- See `:help oil-config` for the full set.
require("oil").setup({
	-- Send deleted files to the trash instead of permanently deleting them
	delete_to_trash = true,
	-- Skip the confirmation popup for simple operations
	skip_confirm_for_simple_edits = true,
	-- Merged over oil's default keymaps, which are otherwise kept as-is.
	keymaps = {
		["<C-v>"] = { "actions.select", opts = { vertical = true } },
	},
	view_options = {
		-- Show files and directories that start with "."
		show_hidden = true,
		-- Never show .git, even when `show_hidden` is set
		is_always_hidden = function(name, _)
			return name == ".git"
		end,
	},
})
