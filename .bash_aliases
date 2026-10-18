alias l='eza --icons'
#alias lt='eza --icons --tree'
alias la='eza --icons --all'
alias lat='eza --icons --all --tree'
alias ls='eza --icons --long --header'
alias lsa='eza --icons --long --header --all'
alias ll='eza --icons --long --header --color-scale --group --all --modified'
alias lll='eza --icons --long --header --color-scale --group --all --accessed --modified --inode --created'

alias fd=fdfind

#Ncurses disk usage viewer
alias du=ncdu

#Alternative to the df command, checking disk space
alias df=duf

#change tmux configuration file location
alias tmux='tmux -f ~/.config/tmux/tmux.conf'

#A cat clone with syntax highlighting and Git integration
alias cat=batcat --color=always
