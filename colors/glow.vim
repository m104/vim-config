" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=2 sw=2
" Vim color file
" Maintainer:    Adam Collins <adam.w.collins@gmail.com>
" Last Change:    2007-05-26

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "glow"

hi Normal       gui=NONE guifg=#e0e0e0 guibg=#06071d

" Search
hi IncSearch    gui=UNDERLINE guifg=#bbbbbb guibg=#0060c0
hi Search       gui=NONE guifg=#ffffff guibg=#0060c0

" Messages
hi ErrorMsg     gui=NONE guifg=#ff6666 guibg=#000215
hi WarningMsg   gui=NONE guifg=#ffff66 guibg=#000215
hi ModeMsg      gui=NONE guifg=#a0d0ff guibg=#000215
hi MoreMsg      gui=NONE guifg=#70ffc0 guibg=#000215
hi Question     gui=NONE guifg=#e8e800 guibg=#000215

" Split area
hi StatusLine   gui=NONE guifg=#ffffff guibg=#171717
hi StatusLineNC gui=NONE guifg=#666666 guibg=#171717
hi VertSplit    gui=NONE guifg=#707070 guibg=#606060
hi WildMenu     gui=NONE guifg=#000000 guibg=#ff80c0

" Diff
hi DiffText     gui=NONE guifg=#ff78f0 guibg=#a02860
hi DiffChange   gui=NONE guifg=#e03870 guibg=#601830
hi DiffDelete   gui=NONE guifg=#a0d0ff guibg=#0020a0
hi DiffAdd      gui=NONE guifg=#a0d0ff guibg=#0020a0

" Cursor
hi Cursor       gui=NONE guifg=#70ffc0 guibg=#8040ff
hi lCursor      gui=NONE guifg=#ffffff guibg=#8800ff
hi CursorIM     gui=NONE guifg=#ffffff guibg=#8800ff

" Fold
hi Folded       gui=NONE guifg=#40f0f0 guibg=#006090
hi FoldColumn   gui=NONE guifg=#40c0ff guibg=#404040

" Other
hi Directory    gui=NONE guifg=#c8c8ff
hi LineNr       gui=NONE guifg=#383838 guibg=#000215
hi NonText      gui=NONE guifg=#383838 guibg=#000215
hi SpecialKey   gui=NONE guifg=#8888ff
hi Title        gui=NONE guifg=fg      guibg=#000215
hi Visual       gui=NONE guifg=#b0ffb0 guibg=#008000
hi VisualNOS    gui=NONE guifg=#ffe8c8 guibg=#c06800

" Syntax group
hi Comment      gui=NONE guifg=#606060 guibg=#000215
hi Constant     gui=NONE guifg=#62e9bd
  hi String       gui=NONE guifg=#8dff8e
  hi Character    gui=NONE guifg=#62e9bd
  hi Number       gui=NONE guifg=#62e9bd
  hi Boolean      gui=NONE guifg=#62e9bd
  hi Float        gui=NONE guifg=#62e9bd
hi Error        gui=NONE guifg=#000000 guibg=#ff6666
hi Identifier   gui=NONE guifg=#b683ca
"hi Ignore       gui=NONE guifg=bg
hi PreProc      gui=NONE guifg=#ffa8ff
hi Special      gui=NONE guifg=#ffc890
hi Statement    gui=NONE guifg=#a3ebff
  hi Conditional  gui=NONE guifg=#a3ebff
  hi Repeat       gui=NONE guifg=#a3ebff
  hi Label        gui=NONE guifg=#a3ebff
  hi Operator     gui=NONE guifg=#a3ebff
  hi Keyword      gui=NONE guifg=#2bf1dc
  hi Exception    gui=NONE guifg=#a3ebff
hi Todo         gui=NONE guifg=#000000 guibg=#ffff66
hi Type         gui=NONE guifg=#a3ebff
hi Underlined   gui=UNDERLINE guifg=fg

