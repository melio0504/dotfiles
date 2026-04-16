# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# Show only last 2 directories in the path
PROMPT_DIRTRIM=2

# Colored PS1
PS1="\[\e[32m\]\u@\h\[\e[0m\]:\[\e[34m\]\w\[\e[0m\]\$ "

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# eza - replacement for ls

# Normal listing
alias ls="eza -lT --time-style='+%Y-%m-%d | %H:%M' --no-user \
           --icons --color=never --level=1 \
           --ignore-glob='node_modules|.git'"

# With hidden files
alias la="eza -la --time-style='+%Y-%m-%d | %H:%M' --no-user \
          --icons --color=never --level=1 \
          --ignore-glob='node_modules|.git'"

# Sorted by size (from lowest to highest)
alias lsize="eza -la --time-style='+%Y-%m-%d | %H:%M' --total-size --sort=size --no-user \
            --icons --color=never --level=1 \
            --ignore-glob='node_modules|.git'"

# Sorted by time (from oldest to newest)
alias ltime="eza -la --time-style='+%Y-%m-%d | %H:%M' --sort=modified --no-user \
            --icons --color=never --level=1 \
            --ignore-glob='node_modules|.git'"

# List with two levels
alias ll="eza -laT --time-style='+%Y-%m-%d | %H:%M' --no-user \
          --icons --color=never --level=2 \
          --ignore-glob='node_modules|.git'"

# All aboard the train choo choo
alias lt="eza -laT --time-style='+%Y-%m-%d | %H:%M' --no-user \
          --icons --color=never \
          --ignore-glob='node_modules|.git'"

# nvim
export PATH="$PATH:/opt/nvim"
alias n='nvim .'

# fnm
FNM_PATH="/home/melio/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "$(fnm env --shell bash)"
fi

# pnpm
export PNPM_HOME="/home/melio/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

# android
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# spicetify
export PATH=$PATH:~/.spicetify

# rust
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
. "$HOME/.cargo/env"
