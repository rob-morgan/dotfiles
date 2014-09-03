Installation:

    git clone git://github.com:rob-morgan/dotfiles.vim ~/dotfiles

Create symlinks:

	~/dotfiles/create_symlinks

On Windows, mklink is used to create symbolic links for the gVim startup files. This must be run in an admin terminal since mklink requires administrative privileges.

	~/dotfiles/create_symlinks_windows

Switch to the `~/dotfiles` directory, and fetch submodules:

    cd ~/dotfiles
    git submodule init
    git submodule update

