# User dependent .bash_profile file

# Determine the host os
source "${HOME}/dotfiles/os_detect"

# Source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ]; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ]; then
  PATH="${HOME}/bin:${PATH}"
  export PATH
fi

# Set MANPATH so it includes users' private man if it exists
if [ -d "${HOME}/man" ]; then
  MANPATH="${HOME}/man:${MANPATH}"
  export MANPATH
fi

# Set INFOPATH so it includes users' private info if it exists
if [ -d "${HOME}/info" ]; then
  INFOPATH="${HOME}/info:${INFOPATH}"
  export INFOPATH
fi

[ -z $OSNAME ] && echo "bash_profile: warning - OSNAME not set"
case "$OSNAME" in
  Darwin )

  # Set PATH for MacPython 2.6
  PATH="/Library/Frameworks/Python.framework/Versions/2.6/bin:${PATH}"
  export PATH

  # Set PATH for use with MacPorts
  PATH="/opt/local/bin:/opt/local/sbin:${PATH}"
  export PATH
  ;;
esac

unset OSNAME

