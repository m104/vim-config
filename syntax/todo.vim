" Vim syntax file
" Language: TODO files
" Maintainer: Adam Collins
" Latest Revision: 18 October 2011

if exists("b:current_syntax")
  finish
endif

syn region todoPendingItem start='^ \+-' end='$'
syn region todoFinishedItem start='^ \++' end='$'

hi def link todoPendingItem Todo
hi def link todoFinishedItem Comment
