vim.o.encoding = "utf-8"
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.number = true
vim.o.hidden = true
vim.o.scrolloff = 4
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.updatetime = 300
vim.o.scrolloff = 8
vim.o.hidden = true
vim.o.relativenumber = true

vim.cmd [[
	hi Normal guibg=NONE ctermbg=NONE
	let $FZF_DEFAULT_COMMAND="rg --files" 
  let NERDTreeShowLineNumbers=1
  let NERDTreeWinSize=60
]]
