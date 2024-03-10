function _lazygit_toggle()
  local Terminal = require('toggleterm.terminal').Terminal
  local lazygit = Terminal:new({
    cmd = "lazygit -w " .. vim.fn.getcwd(),
    hidden = true,
      direction = "tab",
    --float_opts = {
    --  width = 150,
    --  height = 40,
    --  border = "curved",
    --},
  })

  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
