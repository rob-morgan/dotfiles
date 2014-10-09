:: Create home directory symlinks on Windows.
::
:: This script must be run in an admin command prompt since the `mklink`
:: command requires admin privileges to work.

@setlocal
@set HOMEDIR=%HOMEDRIVE%%HOMEPATH%

:: Bash
@mklink %HOMEDIR%\.bash_profile %HOMEDIR%\dotfiles\bash_profile
@mklink %HOMEDIR%\.bashrc %HOMEDIR%\dotfiles\bashrc
@mklink %HOMEDIR%\.bash_completion %HOMEDIR%\dotfiles\bash_completion
@mklink %HOMEDIR%\.sh %HOMEDIR%\dotfiles\sh

:: Vim
@mklink %HOMEDIR%\.vimrc %HOMEDIR%\dotfiles\vimrc
@mklink %HOMEDIR%\.gvimrc %HOMEDIR%\dotfiles\gvimrc
@mklink /D %HOMEDIR%\.vim %HOMEDIR%\dotfiles\vim

:: Vrapper
@mklink %HOMEDIR%\.vrapperrc %HOMEDIR%\dotfiles\vrapperrc

:: Gvim
@mklink %HOMEDIR%\_gvimrc %HOMEDIR%\dotfiles\gvimrc
@mklink %HOMEDIR%\_vimrc %HOMEDIR%\dotfiles\vimrc
@mklink /D %HOMEDIR%\vimfiles %HOMEDIR%\dotfiles\vim

:: Git
@mklink %HOMEDIR%\.git_template %HOMEDIR%\dotfiles\git_template
git config --global init.templatedir '~/.git_template'

:: Misc
@mklink %HOMEDIR%\.ackrc %HOMEDIR%\dotfiles\ackrc
@mklink %HOMEDIR%\.ctags %HOMEDIR%\dotfiles\dotctags

