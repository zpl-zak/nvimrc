-- load options
require('configs.lazy')
require('options')
require('keymap')

-- load configs
local config_path = vim.fn.stdpath("config") .. "/lua/zak/configs"
for _, file in ipairs(vim.fn.readdir(config_path, [[v:val =~ '\.lua$']])) do
  if file ~= "lazy.lua" then
    require("configs."..file:gsub("%.lua$", ""))
  end
end
