let b:is_chicken=1

setl lispwords+=let-values,condition-case,with-input-from-string
setl lispwords+=with-output-to-string,handle-exceptions,call/cc,rec,receive
setl lispwords+=call-with-output-file

setl complete+=,k~/.scheme-word-list

setl include=\^\(\\(use\\\|require-extension\\)\\s\\+
setl includeexpr=substitute(v:fname,'$','.scm','')
setl path+=/usr/local/opt/chicken/lib/chicken/7
setl suffixesadd=.scm

nmap <silent> == :call Scheme_indent_top_sexp()<cr>

" Indent a toplevel sexp.
fun! Scheme_indent_top_sexp()
  let pos = getpos('.')
  silent! exec "normal! 99[(=%"
  call setpos('.', pos)
endfun

