-- Configuration for neovim

require "paq" {
 "savq/paq-nvim";
 "kyazdani42/nvim-tree.lua";
 "vim-airline/vim-airline";
 "vim-airline/vim-airline-themes";
 "neovim/nvim-lspconfig";
 "hrsh7th/nvim-compe";
}

require "tree"
require "airline"
require "lsp"
require "completion"

require "settings"
