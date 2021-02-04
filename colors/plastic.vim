" Vim Color File
" Name:         plastic.vim
" Description:  VSCode Plastic theme vim/neovim port
" Author:       Florian Rand
" Repository:   https://github.com/flrnd/plastic.vim/
" License:      The MIT License (MIT)

" Init {{{
scriptencoding utf-8

set background=dark
hi clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'plastic'

" Highlighting function (inspiration from https://github.com/chriskempson/base16-vim)
fun! Hi(group, fg, bg, attr, sp)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if !empty(a:sp)
    exec "hi " . a:group . " guisp=" . a:sp.gui
endif
endfun
"}}}

" colors definition {{{

let red = {'gui': '#e06c75', 'cterm256': '204'}
let green = { 'gui': '#98c379', 'cterm256': '114'}
let yellow = { 'gui': '#e5c07b', 'cterm256': '180'}
let whisky = { 'gui': '#d19a66', 'cterm256': '173' }
let blue = { 'gui': '#61afef', 'cterm256': '39'}
let purple = { 'gui': '#af98e6', 'cterm256': '170'}
let aqua = { 'gui': '#56b6c2', 'cterm256': '38'}
let white = { 'gui': '#d7d7d7', 'cterm256': '145'}
let black = { 'gui': '#181a1f', 'cterm256': '234'}
let visual_black = { 'gui': 'NONE', 'cterm256': 'NONE'}
let background = {'gui': '#21252b', 'cterm256': '235'}
let foreground = {'gui': '#a9b2c3', 'cterm256': '235'}
let grey = { 'gui': '#abb2bf', 'cterm256': '59' }
let punctuation = { 'gui': '#7c8696', 'cterm256': '238' }
let none = {'gui': 'NONE', 'cterm256': 'NONE'}

" }}}

"--------------------
" Syntax Definitions
"--------------------
" Hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE, SPECIAL)
call Hi('Normal', white, background, 'none', {})

" UI {{{
call Hi('Cursor', none, none, 'inverse', {})
hi link lCursor Cursor
hi link CursorIM Cursor
call Hi('CursorLine', white, none, 'bold', {})
call Hi('EndOfBuffer', whisky, none, 'none', {})
call Hi('Conceal', blue, none, 'none', {})
call Hi('CursorColumn', none, blue, 'none', {})
call Hi('ColorColumn', none, punctuation, 'none', {})
call Hi('FoldColumn', punctuation, background, 'none', {})
call Hi('SignColumn', none, background, 'none', {})
call Hi('VertSplit', grey, background, 'none', {})
call Hi('LineNr', punctuation, background, 'none', {})
call Hi('CursorLineNr', punctuation, background, 'none', {})

call Hi('DiffAdd', black, green, 'none', {})
call Hi('DiffChange', black, purple, 'none', {})
call Hi('DiffDelete', black, red, 'none', {})
call Hi('DiffText', black, aqua, 'none', {})

call Hi('ErrorMsg', red, background, 'bold', {})
call Hi('ModeMsg', yellow, none, 'bold', {})
call Hi('MoreMsg', aqua, none, 'bold', {})
call Hi('WarningMsg', whisky, none, 'italic', {})
call Hi('Noise', punctuation, none, 'none', {})
call Hi('NonText', whisky, none, 'none', {})
call Hi('Folded', grey, none, 'none', {})
call Hi('IncSearch', yellow, black, 'none', {})
call Hi('Search', yellow, background, 'reverse', {})

call Hi('Pmenu', none, black, 'none', {})
call Hi('PmenuSel', black, white, 'none', {})

call Hi('Question', white, background, 'bold', {})
call Hi('MatchParen', blue, none, 'bold', {})
call Hi('Directory', white, background, 'bold', {})
call Hi('QuickFixLine', black, yellow, 'none', {})

call Hi('SpecialKey', purple, none, 'none', {})
call Hi('SpellBad', red, none, 'undercurl', red)
call Hi('SpellCap', none, none, 'undercurl', {})
call Hi('SpellLocal', none, none, 'undercurl', {})
call Hi('SpellRare', none, none, 'undercurl', {})

call Hi('StatusLine', white, background, 'none', {})
call Hi('StatusLineNC', white, background, 'none', {})
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC

call Hi('TabLine', white, black, 'none', {})
hi link TabLineFill TabLine
call Hi('TabLineSel', whisky, black, 'none', {})

call Hi('Title', white, none, 'none', {})
call Hi('Visual', black, white, 'none', {})
hi link VisualNOS Visual
call Hi('TabLine', white, black, 'none', {})
call Hi('WildMenu', black, white, 'bold', {})
"}}}

"----------------------------------------------------
" Syntax groups and naming convenions
" http://vimdoc.sourceforge.net/htmldoc/syntax.html
"----------------------------------------------------
" {{{
call Hi('Comment', grey, none, 'italic', {})

call Hi('Constant', aqua, none, 'none', {})
call Hi('String', green, none, 'none', {})
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Number

call Hi('Identifier', white, none, 'none', {})
call Hi('Function', whisky, none, 'none', {})

call Hi('Statement', whisky, none, 'none', {})
hi link Conditional Statement

call Hi('PreProc', aqua, none, 'none', {})

call Hi('Type', blue, none, 'none', {})

call Hi('Special', aqua, none, 'none', {})

call Hi('Underlined', blue, none, 'underline', {})

call Hi('Ignore', none, none, 'none', {})

call Hi('Error', red, black, 'undercurl', {})

call Hi('Todo', aqua, none, 'italic', {})

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
