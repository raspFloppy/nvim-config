local g = vim.g
local o = vim.o

o.hlsearch = true
o.incsearch = true
o.showmatch = true


o.expandtab = true
o.autoindent = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4


o.ignorecase = true 
vim.cmd('syntax on')


o.number = true
o.ttyfast = true
o.nocompatible = true
o.relativenumber = true
o.clipboard='unnamedplus'


o.mouse = 'v'
o.mouse = 'a'


vim.cmd('set termguicolors')
vim.cmd('colorscheme horizon')
o.background= 'dark'
o.t_Co=256
