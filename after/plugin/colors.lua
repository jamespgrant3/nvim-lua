function ColorMyPencils(color)
  color = color or "dracula"

  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  vim.api.nvim_set_hl(0, "TabLine", { fg = "#bd93f9", bg = "none" })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
  vim.api.nvim_set_hl(0, "TabLineSel", {
    fg = "#50fa7b",
    bold = true,
    standout = true,
    bg = "none"
  })
end

ColorMyPencils()
