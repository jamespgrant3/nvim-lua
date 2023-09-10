vim.keymap.set("n", "<leader>gis", vim.cmd.Git)
vim.keymap.set("n", "<leader>gib", function() vim.cmd.Git { args = { 'blame' }} end)
vim.keymap.set("n", "<leader>gic", function() vim.cmd.Git { args = { 'commit' }}  end)
vim.keymap.set("n", "<leader>gid", function() vim.cmd.Git { args = { 'diff' }} end)
vim.keymap.set("n", "<leader>gil", function() vim.cmd.Git { args = { 'log' }} end)

-- push to remote without setting upstream
--vim.keymap.set("n", "<leader>gp", ":Git -c push.default=current push --no-verify<CR>");
--vim.keymap.set("n", "<leader>gitp", function() vim.cmd.Git { args = { '-c push.default=current push --no-verify' }}  end)
vim.keymap.set("n", "<leader>gip", function() vim.cmd.Git { args = { '-c push.default=current push' }}  end)
vim.keymap.set("n", "<leader>gif", function() vim.cmd.Git { args = { 'fetch' }} end)
vim.keymap.set("n", "<leader>gir", function() vim.cmd.Git { args = { 'rebase' }} end)
