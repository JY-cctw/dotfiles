# Better ls
alias ls='eza --icons'
alias l='eza --icons'

# Detailed listing
alias ll='eza -lah --icons --git'

# Detailed listing including hidden files
alias la='eza -a --icons --git'

# Tree view
alias tree='eza --tree --icons'

# Reuse ls completions for eza (avoids defining a separate completion function)
compdef eza=ls

# Better cat
if command -v bat >/dev/null 2>&1; then
  alias cat=bat
elif command -v batcat >/dev/null 2>&1; then
  alias cat=batcat
  alias bat=batcat
fi

# Better find
if command -v fdfind >/dev/null 2>&1; then
  alias fd=fdfind
fi

# Ncurses disk usage viewer
if command -v ncdu >/dev/null 2>&1; then
  alias du=ncdu
fi

# Alternative to the df command, disk usage/free utility
if command -v duf >/dev/null 2>&1; then
  alias df=duf
fi

# =========================================================
# Core utilities
# =========================================================

alias grep='rg --color=auto'
alias diff='diff --color=auto'

# =========================================================
# Navigation
# =========================================================

alias -- -='cd -'  # -- prevents - being parsed as a flag; cd - jumps to previous directory

lf() { # zsh follow lf navigation
    tmp=$(mktemp)
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir=$(cat "$tmp")
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}

# =========================================================
# Editor
# =========================================================

#alias vim='nvim'

# =========================================================
# Git
# =========================================================

alias glog='PAGER="less -F -X" git log'                              # -F quit if one screen, -X no clear on exit
alias gadog='PAGER="less -F -X" git log --all --decorate --oneline --graph'
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# =========================================================
# Video
# =========================================================

alias stream='mpv av://v4l2:/dev/video4 --fullscreen --demuxer-lavf-o=input_format=mjpeg,framerate=30 --profile=low-latency --untimed'

# =========================================================
# Neovim
# =========================================================
alias nv-pers='NVIM_APPNAME=nvim-personal nvim'
alias nv-lazy='NVIM_APPNAME=nvim-lazy nvim'
alias nv-mini='NVIM_APPNAME=nvim-minimal nvim'

alias nv=nv-lazy
