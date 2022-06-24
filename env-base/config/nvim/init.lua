require'plugins'
require'colorscheme'
require'settings'
require'keymap-settings'
require'statusbar'

vim.cmd [[ nnoremap gp :silent %!prettier --stdin-filepath %<CR> ]]
