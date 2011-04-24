map <silent> <Leader>s :call <SID>spellToggle()<CR>

function! s:spellToggle()
  if exists('b:spellToggle') && b:spellToggle == 1
    let b:spellToggle = 0
    set nospell
    echohl DiffDelete | echon "Spelling Disabled" | echohl None
  else
    let b:spellToggle = 1
    set spell
    echohl DiffAdd | echon "Spelling Enabled" | echohl None
  endif
endfunction
