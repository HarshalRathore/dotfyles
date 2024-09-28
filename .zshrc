#           ░▒▓████████▓▒░  ░▒▓███████▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓███████▓▒░   ░▒▓██████▓▒░
#                  ░▒▓█▓▒░ ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░
#                ░▒▓██▓▒░  ░▒▓█▓▒░        ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░
#              ░▒▓██▓▒░     ░▒▓██████▓▒░  ░▒▓████████▓▒░ ░▒▓███████▓▒░  ░▒▓█▓▒░
#            ░▒▓██▓▒░             ░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░
#  ░▒▓██▓▒░ ░▒▓█▓▒░               ░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░
#  ░▒▓██▓▒░ ░▒▓████████▓▒░ ░▒▓███████▓▒░  ░▒▓█▓▒░░▒▓█▓▒░ ░▒▓█▓▒░░▒▓█▓▒░  ░▒▓██████▓▒░
#
#

# [[ Notes ]]
# C-i fzf-completion
# C-t fzf-file-widget
# C-r fzf-history-widget
# A-c fzf-cd-widget
# Ctrl+f accepts autocompletions
# Ctrl+e edit the cmd in $EDITOR


# Autostart or attach to a tmux session when launching Zsh
# Ensure the terminal is interactive before launching tmux
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    if ! tmux ls > /dev/null 2>&1; then
        exec tmux new-session -As workspace
    else
        if tmux has-session -t workspace 2>/dev/null; then
            exec tmux attach-session -t workspace
        else
            exec tmux attach-session
        fi
    fi
elif ! command -v tmux &> /dev/null; then
    echo "You might wanna install tmux"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \

    ### End of Zinit's installer chunk

# Add in prompt
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Plugin specific config
function _history_substring_search_config() {
    bindkey "^[[1;5A" history-substring-search-up
    bindkey "^[[1;5B" history-substring-search-down
}

# Add in zsh plugins
zinit wait lucid for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
    blockf \
    zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" \
    atload"bindkey '^Y' autosuggest-execute" \
    zsh-users/zsh-autosuggestions \
    atload"!_history_substring_search_config" \
    zsh-users/zsh-history-substring-search

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# [[ Keybindings ]]
# see https://thevaluable.dev/zsh-line-editor-configuration-mouseless/
# https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html#Standard-Widgets
# see : bindkey | fzf for a list of bindings
bindkey -e
bindkey '^p' history-search-backward # Ctrl+p
bindkey '^n' history-search-forward # Ctrl+n
bindkey '^[w' kill-region # Ctrl+w => Ctrl+<backSpace>
bindkey '^[[1;5C' forward-word # Ctrl+->
bindkey '\ek' forward-word # Alt+l => Ctrl+->
bindkey '\ej' backward-word # Ctrl+<-
bindkey '\el' forward-word # Alt+l => Ctrl+->
bindkey '\eh' backward-kill-word # Alt+h => Ctrl+<backSpace>
bindkey '^[[1;5D' backward-word # Ctrl+<-

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^E' edit-command-line

# CURSOR SHAPE # https://unix.stackexchange.com/a/614203
# function zle-keymap-select {
#     if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
#         echo -ne '\e[1 q'
#     elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] ||
#     [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
#         echo -ne '\e[5 q'
#     fi
# }
# zle -N zle-keymap-select
#
# _fix_cursor() { echo -ne '\e[5 q'; }
# precmd_functions+=(_fix_cursor)

# [[ Snippets ]]
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
zinit snippet OMZP::colored-man-pages

# [[ History ]]
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=100000
WORDCHARS='*?_-[]~&;!#$%^(){}<>|'
# HISTORY_IGNORE="(ls|cd|pwd|zsh|exit|cd ..)"
# HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
# setopt hist_ignore_all_dups
# setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt INTERACTIVE_COMMENTS
setopt AUTO_CD # pure directory = cd into it
setopt CD_SILENT
setopt CHASE_LINKS # follow symlinks when they are cd target
setopt NO_BANG_HIST  # don't expand `!`

# auto-escape special characters when pasting URLs
autoload -U url-quote-magic bracketed-paste-magic
zle -N self-insert url-quote-magic
zle -N bracketed-paste bracketed-paste-magic

# Completion styling
if (( ! $+commands[fzf] )) || (( ! $+commands[bat] )) || (( ! $+commands[eza] )) || (( ! $+commands[rg] )) || (( ! $+commands[fd] )) then
    source ~/.comp.zshrc
else
    zinit light Aloxaf/fzf-tab
    zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
    zstyle ':completion:*' menu no
    zstyle ':completion:*:git-checkout:*' sort false
    zstyle ':completion:*:descriptions' format '[%d]'
    zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
    zstyle ':fzf-tab:*' popup-min-size 50 8
    zstyle ':fzf-tab:*' switch-group '<' '>'
    zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
    zstyle ':fzf-tab:*' fzf-pad 4
    zstyle ':fzf-tab:*' fzf-flags \
        --color=fg:-1,fg+:-1,bg:-1,bg+:-1 \
        --color=hl:#f38ba8,hl+:#5fd7ff,info:#cba6f7,marker:#f5e0dc \
        --color=prompt:#cba6f7,spinner:#f5e0dc,pointer:#f5e0dc,header:#f38ba8 \
        --color=border:#6c7086,label:#aeaeae,query:#d9d9d9 \
        --cycle \
        --preview-window="border-rounded" \
        --prompt=" " \
        --marker=">" \
        --pointer=" " \
        --separator="─" \
        --scroll-off=5 \
        --preview-window=border-left \
        --scrollbar="│" \
        --layout="reverse" \
        --info="right" \

        zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --color=always $realpath'
    zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --icons -a --group-directories-first --git --color=always $realpath'
    zstyle ':fzf-tab:complete:cd:*' popup-pad 30 0
    zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
    zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap
    zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'
    zstyle ':fzf-tab:complete:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' fzf-preview 'echo ${(P)word}'
    zstyle ':fzf-tab:complete:git-log:*' fzf-preview 'git log --color=always $word'
    zstyle ':fzf-tab:complete:git-help:*' fzf-preview 'git help $word | bat -plman --color=always'
    zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview 'git diff $word | delta'
    zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
        'case "$group" in
        "modified file") git diff $word | delta ;;
        "recent commit object name") git show --color=always $word | delta ;;
        *) git log --color=always $word ;;
    esac'
    zstyle ':fzf-tab:complete:tldr:argument-1' fzf-preview 'tldr --color always $word'
fi

# [[ Shell integrations ]]
command -v fzf &>/dev/null && eval "$(fzf --zsh)" && source ~/.fzf.zshrc
command -v zoxide &>/dev/null && eval "$(zoxide init --cmd cd zsh)"
command -v thefuck &>/dev/null && eval "$(thefuck --alias)"
command -v fzf &>/dev/null && source ~/.fzf.git.zshrc.sh # credits https://github.com/junegunn/fzf-git.sh

# [[ Aliases ]]
type bat &>/dev/null && alias cat='bat'
type eza &>/dev/null && alias ls='eza --icons --group-directories-first'
type eza &>/dev/null && alias ll='eza -l --icons --no-user --group-directories-first  --time-style long-iso'
type eza &>/dev/null && alias la='eza -la --icons --no-user --group-directories-first  --time-style long-iso'
alias ..=" cd .."
alias ...=" cd ../.."
alias ....=" cd ../../.."
alias -g H="--help | bat --language=help --style=plain --wrap=character"


# [[ Exports ]]
# Affects filetype-coloring in eza, fd, and completion menus
# DOCS https://github.com/eza-community/eza/blob/main/man/eza_colors.5.md
# INFO does also accept specific files via glob, e.g. `README.md=4;33`,
export CLICOLOR=1 # makes `ls` use color by default
export EZA_COLORS="gm=1;38;5;208" # git `modified` with same orange as in starship
export EZA_STRICT=1
export EZA_ICONS_AUTO=1
export EZA_ICON_SPACING=1
export GREP_OPTIONS="--color=auto"
export GREP_COLOR='01;35'
export EDITOR=nvim
export VISUAL=zeditor
export ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd history completion)
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='bg=#d33682,fg=#002b36,bold'
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='bg=#dc322f,fg=#002b36,bold'

# [[ Utility Functions ]]
if [[ -f ~/.func.zshrc.sh ]]; then
    source ~/.func.zshrc.sh
fi
