return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    }
  },
  config = function()
    require('telescope').setup({
      defaults = {
        layout_strategy = 'vertical',
      },
    })

    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
    vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "toggle telescope " })
    vim.keymap.set("n", "<leader>fc", builtin.git_files, { desc = "search over changed files" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "search over buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "search help" })
    vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "search for word under the cursor" })
  end
}
