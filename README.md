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

Add a symlink for the pathogen bundle. This works on OS X or Unix.

    ln -s ~/dotfiles/vim/bundle/pathogen/autoload/pathogen.vim ~/dotfiles/vim/autoload/pathogen.vim

Or, use mklink on Windows so the symlink will be recognised by both gVim and Cygwin Vim. This command must be run in an admin terminal.

	cmd.exe /c mklink `cygpath -w ~/dotfiles/vim/autoload/pathogen.vim` `cygpath -w ~/dotfiles/vim/bundle/pathogen/autoload/pathogen.vim`
