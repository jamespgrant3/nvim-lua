return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp'
  },
  config = function ()
    local cmp = require("cmp")

    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    -- TODO: see which of these keymappings I actually need
    cmp.setup{
      --snippet = {
      --  expand = function(args)
      --    require('luasnip').lsp_expand(args.body)
      --  end,
      --},
      mapping = {
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

        --['<C-Space>'] = cmp.mapping.confirm {
        --  behavior = cmp.ConfirmBehavior.Insert,
        --  select = true,
        --},

        ['<Tab>'] = function(fallback)
          if not cmp.select_next_item() then
            if vim.bo.buftype ~= 'prompt' and has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end
        end,

        ['<S-Tab>'] = function(fallback)
          if not cmp.select_prev_item() then
            if vim.bo.buftype ~= 'prompt' and has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end
        end,

       --['<CR>'] = cmp.mapping({
       --  i = function(fallback)
       --    if cmp.visible() and cmp.get_active_entry() then
       --      cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
       --    else
       --      fallback()
       --    end
       --  end,
       --  s = cmp.mapping.confirm({ select = true }),
       --  c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
       --}),
     },
     sources = cmp.config.sources({
       { name = "nvim_lsp" },
       --{ name = "luasnip" }, -- TODO: Do I need this?
       { name = "buffer" },
       { name = "path" },
     }),
   }
  end
}
