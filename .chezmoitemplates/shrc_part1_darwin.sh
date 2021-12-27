alias cafe="caffeinate -disu &"
alias bup="brew update && brew upgrade"
alias lacie="smartctl -a disk3 | grep Temperature"
alias yd="youtube-dl"
alias cm="chezmoi"

export PATH="/usr/local/sbin:$PATH"

export PATH="/usr/local/opt/jpeg-turbo/bin:$PATH"

eval "$(pyenv init - --no-rehash)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_HOOK_PATH="$HOME/.config/pyenv.d"

export PATH="/usr/local/opt/openjdk/bin:$PATH"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

if [ -n "$BASH_VERSION" ]; then
  eval "$(thefuck --alias)"
fi

export PATH="$HOME/.emacs.d/bin:$PATH"

export PATH="/Library/TeX/texbin:$PATH"