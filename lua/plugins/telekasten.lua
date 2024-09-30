local home = vim.fn.expand("~/repos/notes")

return {
  "renerocksai/telekasten.nvim",
  dependencies = {"nvim-telescope/telescope.nvim"},
  opts = {
    home = home,
    dailies = home .. "/templates/dailies",
    weeklies = home .. "/templates/weeklies",
    templates = home .. "/templates",
    template_new_daily = home .. "/templates/new_daily.md",
    template_new_note = home .. "/templates/new.md",
    template_new_weekly = home .. "/templates/new_weekly.md",
  },
  keys = {
    { "<leader>nf", "<cmd>Telekasten find_notes<cr>", desc = "find notes" },
    { "<leader>ng", "<cmd>Telekasten search_notes<cr>", desc = "search notes" },
    -- { "<leader>nt", "<cmd>Telekasten goto_today<cr>", desc = "goto todays note" },
    { "<leader>nl", "<cmd>Telekasten follow_link<cr>", desc = "follow note link" },
    { "<leader>nn", "<cmd>Telekasten new_note<cr>", desc = "new note" },
    { "<leader>nt", "<cmd>Telekasten new_templated_note<cr>", desc = "new templated note" },
    -- { "<leader>nc", "<cmd>Telekasten show_calendar<cr>", desc = "" },
    { "<leader>nb", "<cmd>Telekasten show_backlinks<cr>", desc = "show notes linked to current note" },
    { "<leader>nI", "<cmd>Telekasten insert_img_link<cr>", desc = "insert image link" },
    { "<leader>np", "<cmd>Telekasten panel<cr>", desc = "note panel" },
    { "<leader>nr", "<cmd>Telekasten rename_note<cr>", desc = "rename note and update links pointing to it" }
  },
}
