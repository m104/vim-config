" Vim syntax file
" Language: TODO files
" Maintainer: Adam Collins
" Latest Revision: December 11 2013

if exists("b:current_syntax")
  finish
endif

syn match todoTag          "\[[^ ]\+\]"
syn match todoPendingItem  "^ *-.*$" contains=todoTag
syn match todoFinishedItem "^ *+.*$" contains=todoTag

hi def link todoTag Constant
hi def link todoPendingItem Todo
hi def link todoFinishedItem Comment

