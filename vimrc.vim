" modernize vim
set nocompatible
" ensure utf-8 encoding
set encoding=utf-8


" * Vundle

" load Vundle
filetype off
let $VUNDLEDIR=$HOME . '/.vim/bundle/vundle'
set rtp+=$VUNDLEDIR
call vundle#rc()

" vim plugin
Bundle 'The-NERD-tree'
Bundle 'ctrlp.vim'

" file type support
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-haml'
Bundle 'vim-coffee-script'

" text editing
Bundle 'tpope/vim-surround'

" SCM/project/support
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'
Bundle 'taglist.vim'

" UI
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'unicode'

" * General Vim Settings

" enable filetype detection
filetype plugin indent on
" allow hidden buffers
set hidden
" lines of command-line (etc) history
set history=100
" remember all of these between sessions, but only 10 search terms; also
" remember info for 10 files, but never any on removable disks, don't remember
" marks in files, don't rehighlight old search patterns, and only save up to
" 100 lines of registers; including @10 in there should restrict input buffer
" but it causes an error for me
set viminfo=/10,'10,r/Volumes,f0,h,\"100


" * User Interface

" dark background, by default
set background=dark
" mouse selection
set selectmode=mouse
" no beeping, please...
set vb
" always show status line
set laststatus=2
" display the current mode and partially-typed commands in the status line
set showmode
set showcmd
" default or informative status line
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%w%m%r%y%{exists('g:loaded_fugitive')?fugitive#statusline():''}%=%-16(\ %l,%c%V\ %)%P
" use '[RO]' for '[readonly]' to save space in the message line
set shortmess+=r
" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities
set wildmode=list:longest,full


" * Text Editing Display

" have syntax highlighting in terminals which can display colours:
syntax on
" faster or more accurate syntax highlighting
syn sync ccomment cComment minlines=30 maxlines=300
"syn sync fromstart
" keep 2 lines and characters of context
set so=2
set siso=2
" don't wrap long lines
set nowrap
" cursor position
set ruler
" if we do wrap lines, show them explicitly
set showbreak=`
" make searches case-insensitive, unless they contain upper-case letters
set ignorecase
set smartcase
" show the `best match so far' as search strings are typed
set incsearch
" highlight search strings
set hlsearch
" show matches
set showmatch
" display 'invisible' characters
set listchars=tab:>.,trail:-
set list


" * Text Formatting

" indents with 2 spaces and smart indenting
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set shiftround
set expandtab
set autoindent
" normally don't automatically format `text' as it is typed, IE only do this
" with comments, at 80 characters
set formatoptions=crq
set textwidth=80
" have the h and l cursor keys wrap between lines (like <Space> and <BkSpc> do
" by default), and ~ covert case over line breaks; also have the cursor keys
" wrap in insert mode
set whichwrap=h,l,~,[,]
" turn on programmaticly syntactical folds
set foldmethod=indent
" set the fold level high enough to not fold the whole program
set foldlevel=20
" backspace
set backspace=indent,eol,start


" * Key Mappings

" cycle through buffers/files
nnoremap <C-N> :bn<CR>
nnoremap <C-M> :bp<CR>
" quick buffer list and select
nnoremap <C-B> :buffers<CR>:buffer<Space>

" quick plugin toggling
map <silent> <Leader>n :NERDTreeToggle<CR>
map <silent> <Leader>f :NERDTreeFind<CR>
map <silent> <Leader>t :TlistToggle<CR>

" search for points of interest
map <silent> <Leader>i /\\<\\(TODO\\|FIXME\\|BUG\\|DEBUG\\|XXX\\|HACK\\|NOTE\\)\\><CR>

" search for git merge conflicts
map <silent> <Leader>m /^[<=>]\{7\}<CR>

" * Load Additional Settings

" host-specific configuration loading
let $HOSTCONFIGFILE=$HOME . '/.vim/host/' . hostname() . '.vim'

if filereadable($HOSTCONFIGFILE)
  source $HOSTCONFIGFILE
endif

