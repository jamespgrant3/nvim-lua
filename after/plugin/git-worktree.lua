local worktree = require("git-worktree")

worktree.setup({
  change_directory_command = "cd",
  update_on_change = true,
  update_on_change_command = "",
  clearjumps_on_change = true,
  autopush = false,
})

--  an edge case exists with git worktree and nvim-tree
--  if you change worktrees before interacting with nvim-tree, nvim-worktree successfully changes directories
--  however, if you first interact with nvim-tree, then change worktrees, nvim-worktree does not change directories
--  using this hook to ensure we change directories
worktree.on_tree_change(function(op, metadata)
  local api = require("nvim-tree.api")

  if op == worktree.Operations.Switch then
    api.tree.change_root(metadata.path)
  end
end)

require("telescope").load_extension("git_worktree")

-- git worktree
-- <Enter> - switches to that worktree
-- <C-d> - deletes that worktree
-- <C-f> - toggles forcing of the next deletion
vim.keymap.set("n", "<leader>wt", "<cmd>:lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  { desc = "switch git worktree" })
vim.keymap.set("n", "<leader>wtc", "<cmd>:lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  { desc = "create a new git worktree" })
