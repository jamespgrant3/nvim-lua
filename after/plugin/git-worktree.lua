local Worktree = require("git-worktree")

Worktree.setup({
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
Worktree.on_tree_change(function(op, metadata)
  local api = require("nvim-tree.api")

  if op == Worktree.Operations.Switch then
    api.tree.change_root(metadata.path)
  end
end)

require("telescope").load_extension("git_worktree")
