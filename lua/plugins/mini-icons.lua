vim.pack.add({
	"https://github.com/nvim-mini/mini.icons",
})

require("mini.icons").setup({})

-- Serve `require("nvim-web-devicons")` from mini.icons so lualine keeps its
-- filetype icons without the extra plugin. Must run before lualine draws.
require("mini.icons").mock_nvim_web_devicons()
