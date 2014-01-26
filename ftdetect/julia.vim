" NOTE: fixes and issue with paredit.vim loading
au BufRead,BufNewFile *.jl
      \ let g:paredit_mode = 0 |
      \ call PareditInitBuffer()
