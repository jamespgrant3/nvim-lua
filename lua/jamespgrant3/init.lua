require("jamespgrant3.remap")
require("jamespgrant3.set")
require("jamespgrant3.packer")

local augroup = vim.api.nvim_create_augroup
local JamesGroup = augroup('JamesGroup', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 250,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = JamesGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd("FileType", {
  pattern = "yaml",
  command = "setlocal indentkeys-=0#"
})

--vim.g.netrw_keepdir = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
