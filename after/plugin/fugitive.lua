vim.keymap.set("n", "<leader>gis", vim.cmd.Git, { desc = "git status" })
vim.keymap.set("n", "<leader>gib", function() vim.cmd.Git { args = { 'blame' } } end, { desc = "git blame" })
vim.keymap.set("n", "<leader>gic", function() vim.cmd.Git { args = { 'commit' } } end, { desc = "git commit" })
vim.keymap.set("n", "<leader>gid", function() vim.cmd.Git { args = { 'diff' } } end, { desc = "git diff" })
vim.keymap.set("n", "<leader>gil", function() vim.cmd.Git { args = { 'log' } } end, { desc = "git log" })

-- push to remote without setting upstream
--vim.keymap.set("n", "<leader>gp", ":Git -c push.default=current push --no-verify<CR>");
--vim.keymap.set("n", "<leader>gitp", function() vim.cmd.Git { args = { '-c push.default=current push --no-verify' }}  end)
vim.keymap.set("n", "<leader>gip", function() vim.cmd.Git { args = { '-c push.default=current push' } } end,
  { desc = "git push" })
vim.keymap.set("n", "<leader>gif", function() vim.cmd.Git { args = { 'fetch' } } end, { desc = "git fetch" })
vim.keymap.set("n", "<leader>gir", function() vim.cmd.Git { args = { 'rebase' } } end, { desc = "git rebase" })
