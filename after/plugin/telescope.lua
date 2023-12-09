local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "toggle telescope " })
vim.keymap.set("n", "<leader>fl", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "live grep search" })
vim.keymap.set('n', '<leader>fc', builtin.git_files, { desc = "search over changed files" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "search over buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "search help" })
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "search for word under the cursor" })
vim.keymap.set('n', '<leader>fg', function()
  builtin.grep_string({ search = vim.fn.input("grep > ") });
end, { desc = "grep search" })
