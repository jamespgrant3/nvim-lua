local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require('lspconfig')['tsserver'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['terraformls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['yamlls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['dockerls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['eslint'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['terraformls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['pylsp'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['gopls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['ruby_ls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['lua_ls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

lsp.configure('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = 'E',
		warn = 'W',
		hint = 'H',
		info = 'I'
	}
})

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }

  vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set('n', '<C-k>', function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set('n', '<leader>wa', function() vim.lsp.buf.add_workspace_folder() end, opts)
  vim.keymap.set('n', '<leader>wr', function() vim.lsp.buf.remove_workspace_folder() end, opts)
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts)
  vim.keymap.set('n', '<leader>D', function() vim.lsp.buf.type_definition() end, opts)
  vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, opts)
  --vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)
  --vim.keymap.set('n', '<leader>di', function() vim.lsp.buf.code_action('source.organizeImports.ts'), opts)
end

lsp.setup()
