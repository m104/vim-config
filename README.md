# m104's vim/gvim configuration files

Now with Vundle!

## Included plugins

### Vim Stuff

  + nerdtree
  + vim-powerline

### Ruby on Rails Support

  + vim-ruby
  + vim-rails
  + vim-markdown
  + vim-haml
  + vim-coffee-script

## Lisp, Julia Support

  + julia-vim
  + slimv

### Text Editing Helpers

  + surround

### SCM/Project Stuff

  + vim-fugitive
  + vim-git
  + scmdiff (included plugin)
  + taglist

### Color Schemes

  + molokai_m104 (current)
  + glow
  + solarized


## Installation

Installation in four steps:

1. Fork and clone this project to your home directory:

        $ git clone git@github.com:$GITUSER/vim-config.git ~/.vim

2. Create a ~/.vimrc (and possibly ~/.gvimrc) file for vim to find. I suggest a symlink:

        $ ln -s ~/.vim/vimrc.vim ~/.vimrc
        $ ln -s ~/.vim/gvimrc.vim ~/.gvimrc

3. Install Vundle:

        $ cd ~/.vim
        $ git clone http://github.com/gmarik/vundle.git bundle/vundle

4. Finally, install the Vundle bundles:

        $ vim +BundleInstall +qall

Enjoy!
