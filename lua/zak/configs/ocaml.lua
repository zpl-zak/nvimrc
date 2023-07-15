-- usercmd group
local augroup = vim.api.nvim_create_augroup("ocaml_cmds", { clear = true })

-- OCaml setup
vim.cmd [[
let g:opamshare = substitute(system('opam var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"
]]

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "ocaml" },
    group = augroup,
    desc = "",
    command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2"
})
