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
			defaults = {
				qflist_previewer = function(opts)
					return require("telescope.previewers").new_buffer_previewer({
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
					})
				end,
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
	keys = {
		{ "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
		{ "<leader>fa", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>" },
		{ "<leader>fd", "<cmd>lua require('telescope.builtin').diagnostics()<cr>" },
		{ "<leader>gr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>" },
		{
			"<leader>ff",
			"<cmd>lua require('telescope.builtin').find_files()<cr>",
			desc = "toggle telescope",
		},
		{
			"<leader>fc",
			"<cmd>lua require('telescope.builtin').git_files()<cr>",
			desc = "search over changed files",
		},
		{
			"<leader>fb",
			"<cmd>lua require('telescope.builtin').buffers()<cr>",
			desc = "search over buffers",
		},
		{
			"<leader>fh",
			"<cmd>lua require('telescope.builtin').help_tags()<cr>",
			desc = "search help",
		},
		{
			"<leader>fs",
			"<cmd>lua require('telescope.builtin').grep_string()<cr>",
			desc = "search for word under the cursor",
		},
		{
			"<leader>gs",
			"<cmd>lua require('telescope.builtin').git_status()<cr>",
			desc = "git status to see changed files",
		},
	},
}
