# Common settings across different shells (bash/zsh)

{{ if eq .os "darwin" -}}
  if ! command -v nvim &> /dev/null; then
    export EDITOR=/usr/bin/vim
  else
    export EDITOR=/usr/local/bin/nvim
  fi
{{ else if eq .os "linux" -}}
  if ! command -v nvim &> /dev/null; then
    export EDITOR=/usr/bin/vim
  else
    # If Neovim is installed with package manager:
    export EDITOR=/usr/bin/nvim
    # If Neovim is installed from source:
    #export EDITOR=/usr/local/bin/nvim
  fi
{{ end -}}
export VISUAL="$EDITOR"

#more aliases here
alias sudo='sudo '
if command -v nvim &> /dev/null; then
  alias vi='nvim'
else
  alias vi='vim'
fi

export LANG=en_US.UTF-8

# Terminal color
export CLICOLOR=1
export COLORTERM=truecolor
export LSCOLORS=GxFxCxDxBxegedabagaced
if [[ "$(uname)" == "Darwin" ]]; then
  # If using native BSD utils
  #alias ls='ls -G'
  # If installed "coreutils" with homebrew,
  # and added
  # export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  # to ~/.bashrc_local per advice after installation
  alias ls='ls --color'
elif [[ "$(uname)" == "Linux" ]]; then
  alias ls='ls --color'
fi

export PAGER="less -RF"
export LESS='--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS'

# less color
export LESS_TERMCAP_mb=$'\E[01;31m'    # begin blink
export LESS_TERMCAP_md=$'\E[01;33m'    # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[01;04;32m' # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
# and so on

# man
export MANPAGER='less -s -M +Gg'

{{ if eq .os "darwin" -}}
alias cm="chezmoi"

export HOMEBREW_BUNDLE_FILE="$HOME/.config/Brewfile"

{{ else if eq .os "linux" -}}

alias cm="$HOME/bin/chezmoi"

{{ end -}}
