# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export GPG_TTY=$(tty)
export PATH="$HOME/.npm-global/bin:$HOME/.local/bin:$PATH"
export $(grep -v '^#' ~/harshal/repeato/.env.mcp.local | xargs)
export OPENCODE_API_KEY="$OPENCODE_GO_API_KEY"
