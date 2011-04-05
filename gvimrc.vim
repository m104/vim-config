" status line should always be shown
set laststatus=2

" turn off the toolbar in gvim
set guioptions-=T

" host-specific configuration loading
let $HOSTCONFIGFILE=$HOME . '/.vim/host/' . hostname() . '.gvim'

if filereadable($HOSTCONFIGFILE)
  source $HOSTCONFIGFILE
endif
