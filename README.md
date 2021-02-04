![plastic.vim](https://github.com/flrnprz/plastic.vim/blob/master/plastic-vim-screen.png)

# plastic.vim

[VSCode Plastic](https://github.com/will-stone/plastic) theme port for vim/neovim.

## Install

1. Using your plugin manager of choice and placing `flrnprz/plastic.vim` in your .vimrc file.
   or
2. clone this directory into your vim/plugged directory

```vim
" important:
set termguicolors

set background=dark
syntax on
colorscheme plastic

" Lightline
let g:lightline = { 'colorscheme': 'plastic' }
```

## FORGINFO
Forged to improve performance when loading the plugin by using the rtp **syntax** directory.

Starktime and plugin performance was measured with [this plugin](https://github.com/hyiltiz/vim-plugins-profile).
