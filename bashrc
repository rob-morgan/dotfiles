# User dependent .bashrc file

# If not running interactively, don't do anything
if [[ "$-" != *i* ]]; then
	return
fi

# Determine the host os
source "${HOME}/dotfiles/os_detect"

# Shell Options
#
# See man bash for more options...
#
# Use case-insensitive filename globbing
shopt -s nocaseglob
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell

# Completion options
#
# These completion tuning parameters change the default behavior of bash_completion:
#
# Define to avoid flattening internal contents of tar files
# COMP_TAR_INTERNAL_PATHS=1

# Source scripts found in ~/.sh
if [ -e ~/.sh/*.sh ]; then
    for f in ~/.sh/*.sh; do
        source $f
    done
fi

# Source the local environment script if it exists
if [ -f ~/.local_env ]; then
    source ~/.local_env
fi

# Turn on programmable completion enhancements for cygwin
if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion
fi

# Turn on programmable completion enhancements for mac
if [ -f /opt/local/etc/bash_completion ]; then
	source /opt/local/etc/bash_completion
fi

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'

# Aliases
#
# Aliases will be used instead of any instructions they may mask.  For example,
# alias rm='rm -i' will mask the rm application.  To override the alias
# instruction use a \ before, ie \rm will call the real rm not the alias.
#
# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Some shortcuts for different directory listings
LS_OPTS=-h
if [ "$OSNAME" == "Cygwin" ]; then
	LS_OPTS="$LS_OPTS --color=auto"
fi
alias ll="ls -l $LS_OPTS"              # long list
alias la="ls -lA $LS_OPTS"              # all but . and ..

# Misc

# Set VISUAL editor command for git
export EDITOR=vim
export VISUAL="vim"

# Platform-specific
[ -z $OSNAME ] && echo "bashrc: warning - OSNAME not set"
case "$OSNAME" in
	Darwin )
	# Colorize the terminal
	export CLICOLOR=1;
	;;

	Cygwin )
	# Use the solarized light colour scheme
	source $HOME/dotfiles/solarized/mintty/mintty-solarized-light.sh

	# setup for color ls
	#LS_COLORS='no=00:fi=00:di=01;34:ln=01;35:pi=40;32:so=01;40;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=32:*.class=01;31:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.deb=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tiff=01;35:*.mpg=01;37:*.avi=01;37:*.gl=01;37:*.dl=01;37:*.tex=01;31:';
	#export LS_COLORS

	alias gvim='HOME=${HOMEDRIVE}${HOMEPATH} cygwrap /c/Program\ Files\ \(x86\)/Vim/vim74/gvim.exe --fork=1'
	# Specify visual editor for git
	#export VISUAL='cygwrap /c/Program\ Files\ \(x86\)/Vim/vim74/gvim.exe'
	;;

	MinGW )
	alias gvim='/c/Program\ Files\ \(x86\)/Vim/vim74/gvim.exe'
	;;
esac

