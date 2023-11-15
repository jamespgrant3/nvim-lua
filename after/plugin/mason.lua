require("mason-lspconfig").setup {
  ensure_installed = {
    "eslint",       -- linting engine for javaScript / typescript
    "html",         -- vscode-html-language-server
    "jsonls",       -- vscode-json-language-server, a language server for JSON and JSON schema
    "lua_ls",       -- lua language server.
    "terraformls",  -- terraform language server
    "tflint",       -- a pluggable terraform linter that can act as lsp server
    "tsserver",     -- typescript-language-server depends on typescript
    "yamlls"        -- yaml-language-server
  }
}
