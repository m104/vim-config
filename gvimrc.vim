" status line should always be shown
set laststatus=2

" turn off the toolbar in gvim
set guioptions-=T

" OS-specific configuration loading
let s:os=substitute(system('uname -s'), '\n', '', 'g')
let s:osfile=$HOME . '/.vim/local/os-' . s:os . '.gvim'
if filereadable(s:osfile)
  execute 'source '. s:osfile
endif

" host-specific configuration loading
let s:hostfile=$HOME . '/.vim/local/host-' . hostname() . '.gvim'
if filereadable(s:hostfile)
  execute 'source '. s:hostfile
endif

