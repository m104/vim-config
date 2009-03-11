if has("gui_gtk2")
  set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 10
elseif has("x11")
  set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
endif

win 80 40
set nu

" host-specific configuration loading
let $HOSTCONFIGFILE=$HOME . '/.vim/host/' . hostname() . '.gvim'

if filereadable($HOSTCONFIGFILE)
  source $HOSTCONFIGFILE
endif
