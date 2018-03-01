" Vim syntax file
" Language: Checklist files
" Maintainer: Adam Collins
" Latest Revision: March 1 2018

if exists("b:current_syntax")
  finish
endif

syn match checklistTag          "\[[^ ]\+\]"
syn match checklistPendingItem  "^ *-.*$" contains=checklistTag
syn match checklistFinishedItem "^ *+.*$" contains=checklistTag
syn match checklistQuestionItem "^ *?.*$" contains=checklistTag

hi def link checklistTag Constant
hi def link checklistPendingItem Todo
hi def link checklistFinishedItem Comment
hi def link checklistQuestionItem Question
