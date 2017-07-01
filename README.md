# m104's vim/gvim configuration files

Now with Vundle!

## Included plugins

### Vim Stuff

  + nerdtree
  + ctrlp
  + tagbar
  + airline

### Go Support

  + vim-go

### Ruby/Rails Support

  + vim-ruby
  + vim-rails
  + vim-markdown

### Lisp Support

  + swank-chicken
  + slimv

### Julia Support

  + julia-vim

### Thrift Support

  + thrift

### CQL Support

  + cql-vim

### Swift Support

  + vim-swift

### Scala Support

  + vim-scala

### Text Editing Helpers

  + surround

### SCM/Project Stuff

  + vim-fugitive
  + vim-git

### Color Schemes

  + rendered_day (current)
  + molokai_m104
  + glow


## Installation

Installation in four steps:

1. Fork and clone this project to your home directory:

        git clone git@github.com:$GITUSER/vim-config.git ~/.vim

2. Create a ~/.vimrc (and possibly ~/.gvimrc) file for vim to find. I suggest a symlink:

        ln -s ~/.vim/vimrc.vim ~/.vimrc
        ln -s ~/.vim/gvimrc.vim ~/.gvimrc

3. Install Vundle:

        git submodule init
        git submodule update

4. Install the Vundle bundles:

        vim +BundleInstall +qall

5. Optionally, install the go binaries:

        vim +GoInstallBinaries +qall

Enjoy!
