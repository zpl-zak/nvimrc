vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("zak.lazy");
require("zak.options");
require("zak.keymap");
require("zak.treesitter");
require("zak.lsp");
require("zak.ale");
require("zak.ocaml");

-- vim: ts=2 sts=2 sw=2 et
