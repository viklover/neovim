-- Mason LSP config (for compatibility)
require("mason-lspconfig").setup({
  ensure_installed = { "clangd", "tsserver", "pyright", "lua_ls", "jsonls", "html" }
})

-- LSP config
local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.lua_ls.setup {}

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<leader>lD', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>ld', vim.diagnostic.setloclist)
