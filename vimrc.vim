"autocmd!
set nocompatible
"set selectmode=mouse
set encoding=utf-8

filetype plugin on
filetype indent on

set hidden

" * User Interface

" cursor position
set ruler


" no beeping, please...
set vb

" have syntax highlighting in terminals which can display colours:
syntax on

" accurate, but slow, syntax parsing
syn sync fromstart

" have fifty lines of command-line (etc) history:
set history=100
" remember all of these between sessions, but only 10 search terms; also
" remember info for 10 files, but never any on removable disks, don't remember
" marks in files, don't rehighlight old search patterns, and only save up to
" 100 lines of registers; including @10 in there should restrict input buffer
" but it causes an error for me:
set viminfo=/10,'10,r/Volumes,f0,h,\"100

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" use "[RO]" for "[readonly]" to save space in the message line:
set shortmess+=r

" display the current mode and partially-typed commands in the status line:
set showmode
set showcmd

" turn off the toolbar in gvim
set guioptions-=T

" when using list, keep tabs at their full width and display `arrows':
" (Character 187 is a right double-chevron, and 183 a mid-dot.)
"execute 'set listchars+=tab:' . nr2char(187) . nr2char(183)
set listchars=tab:>.,trail:-
set list

" keep 3 lines and characters of context
set so=2
set siso=2

" don't have files trying to override this .vimrc:
"set nomodeline

" * Text Formatting -- General

" don't make it look like there are line breaks where there aren't:
set nowrap

" if we do wrap, show them explicitly
set showbreak=`

" use indents of 2 spaces, and have them copied down lines:
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent

" normally don't automatically format `text' as it is typed, IE only do this
" with comments, at 76 characters:
set formatoptions=croq
set textwidth=72

" enable filetype detection:
filetype on

" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase

" Spell Checking!
"set spell

" show the `best match so far' as search strings are typed:
set incsearch
" highlight search strings
set hlsearch
" show matches
set showmatch

" set the initial search pattern
let @/="TODO"

" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

" turn on programmaticly syntactical folds
set foldmethod=indent
" set the fold level high enough to not fold the whole program 
set foldlevel=20

set backspace=indent,eol,start

" justify text
nmap <C-Q> vipgq

" use <F6> to cycle through split windows (and <Shift>+<F6> to cycle backwards,
" where possible):
nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W

" use <Ctrl>+N to cycle through files:
nnoremap <C-N> :next<CR>
" use <Ctrl>+P to reverse-cycle through files:
nnoremap <C-P> :prev<CR>

" unused printing keys
"nnoremap <C-P> :w!<CR>:!expand -t 4 % \| lpr -p -o sides=one-sided<CR>
"nnoremap <C-P> :w!<CR>:a2ps -d -s 1 -R -C -T 4 -M Letter -g %<CR>



" GUI font and color selection
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 10
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  endif

  colorscheme glow
  win 80 40
  set nu

else
  " set color scheme for light terminals
  set background=dark
endif



" host-specific configuration loading
let $HOSTCONFIGFILE=$HOME . '/.vim/host/' . hostname() . '.vim'

if filereadable($HOSTCONFIGFILE)
  source $HOSTCONFIGFILE
endif
