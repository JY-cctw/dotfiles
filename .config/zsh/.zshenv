# ~/.config/zsh/.zshenv

#--------- Avoid duplicate item in PATH ----------
typeset -U path PATH

# ---------- XDG base directories ----------
# Centralizes config/cache/data locations
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ---------- Editor ----------
# Default editor used by git, crontab, etc.
export EDITOR="vim"
export VISUAL="vim"

# ---------- Pager ----------
if command -v bat >/dev/null 2>&1; then
  export MANPAGER="bat -l man -p"
elif command -v batcat >/dev/null 2>&1; then
  export MANPAGER="batcat -l man -p"
fi

# ---------- Ghostty ----------
export COLORTERM=truecolor

# ---------- EZA --------------
unset LS_COLOR EZA_COLORS

# ---------- GPG ----------
#export GPG_TTY=$(tty)

# ---------- Starship ----------
export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"

# ---------- PATH ----------
# Personal binaries/scripts
export PATH="$HOME/.local/bin:$HOME/.local/bin/neovim/bin:$PATH"

# ---------- Completion -----------
# Avoid compinit be execute in /etc/zsh/zshrc 
skip_global_compinit=1


. "$HOME/.cargo/env"
