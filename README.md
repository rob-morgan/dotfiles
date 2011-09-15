Installation:

    git clone git://github.com:rob-morgan/dotfiles.vim ~/dotfiles

Create symlinks:

	~/dotfiles/create_symlinks

Switch to the `~/dotfiles` directory, and fetch submodules:

    cd ~/dotfiles
    git submodule init
    git submodule update

Add a symlink for the pathogen bundle

    ln -s ~/dotfiles/vim/bundle/pathogen/autoload/pathogen.vim ~/dotfiles/vim/autoload/pathogen.vim

