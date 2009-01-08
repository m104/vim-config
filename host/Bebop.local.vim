" GUI font for OS X
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 14
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set nomacatsui anti enc=utf-8 gfn=Monaco:h13
  endif
endif
