" status line should always be shown
set laststatus=2

" host-specific configuration loading
let $HOSTCONFIGFILE=$HOME . '/.vim/host/' . hostname() . '.gvim'

if filereadable($HOSTCONFIGFILE)
  source $HOSTCONFIGFILE
endif
