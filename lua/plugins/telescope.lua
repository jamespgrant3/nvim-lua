local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>", opts)
map('n', '<leader>fa', "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", opts)
map('n', '<leader>fd', "<cmd>lua require('telescope.builtin').diagnostics()<cr>", opts)
map('n', '<leader>gr', "<cmd>lua require('telescope.builtin').lsp_references()<cr>", opts)
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
map('n', '<leader>fc', "<cmd>lua require('telescope.builtin').git_files()<cr>", opts)
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').buffers()<cr>", opts)
map('n', '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>", opts)
map('n', '<leader>fs', "<cmd>lua require('telescope.builtin').grep_string()<cr>", opts)
map('n', '<leader>gs', "<cmd>lua require('telescope.builtin').git_status()<cr>", opts)

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		{
			"nvim-telescope/telescope-live-grep-args.nvim",
			version = "^1.0.0",
		},
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			pickers = {
				diagnostics = {
					previewer = require("telescope.previewers").new_buffer_previewer({
						title = "Diagnostics",
						dyn_title = function(_, entry)
							return entry.title
						end,

						get_buffer_by_name = function(_, entry)
							return "diagnostics_" .. tostring(entry.nr)
						end,

						define_preview = function(self, entry)
							vim.api.nvim_buf_set_lines(self.state.bufnr, 0, -1, false, { entry.text })
						end,
					}),
				},
			},
		})
		-- load the extension
		telescope.load_extension("live_grep_args")
	end,
	opts = {
		defaults = {
			layout_strategy = "vertical",
			vimgrep_arguments = {
				"rg",
				"--color=never",
				"--no-heading",
				"--with-filename",
				"--line-number",
				"--column",
				"--smart-case",
				"--hidden",
			},
		},
	},
}
