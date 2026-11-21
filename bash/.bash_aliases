# normal ls
alias ls="eza -lT --icons --color=never --level=1"

# with hidden files
alias la="eza -lTa --icons --color=never --level=1"

# sorted by size (lowest to highest)
alias lsize="eza -lTa --total-size --sort=size --no-user \
            --icons --color=never --level=1"

# sorted by time (oldest to newest)
alias ltime="eza -lTa --sort=modified --icons --color=never --level=1"

# show with two levels
alias ll="eza -lTa --icons --color=never --level=2"

# all aboard the train choo choo
alias lt="eza -laT --icons --color=never"

# fastfetch
alias ff="fastfetch"

# tmux
alias t="tmux"

# nvim
alias n='nvim'
alias nn='nvim .'

# yt-dlp
alias yt='yt-dlp_linux'
