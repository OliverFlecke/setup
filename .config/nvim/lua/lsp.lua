-- Configuration for lsp

require 'paq' {
 'neovim/nvim-lspconfig';
}

-- local lspconfig = require('lspconfig')
local servers = {
 'pyright',
}

require'lspconfig'.pyright.setup{}

