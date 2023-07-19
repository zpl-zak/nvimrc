
vim.cmd([[
   inoremap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
   let g:copilot_no_tab_map = v:true
   let g:copilot_filetypes = { 'jai': v:true}
]])

return {
  "github/copilot.vim",
  version = "*"
}

