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

# Add in Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit wait lucid for \
    atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
    blockf \
    zsh-users/zsh-completions \
    atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

# Ctrl+f accepts autocompletions
zinit light Aloxaf/fzf-tab

# wakatime tracking API key in .wakatime.cfg
zinit wait lucid for \
    wbingli/zsh-wakatime

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

# [[ Snippets ]]
# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::command-not-found
zinit snippet OMZP::colored-man-pages

# [[ History ]]
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=100000
HISTORY_IGNORE="(ls|cd|pwd|zsh|exit|cd ..)"
HISTDUP=erase
WORDCHARS='*?_-[]~&;!#$%^(){}<>|'
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --color=always $realpath'
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' switch-group '<' '>'
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# [[ Aliases ]]
alias cat='bat'
type eza &>/dev/null && alias ls='eza --icons --group-directories-first'
type eza &>/dev/null && alias ll='eza -l --icons --no-user --group-directories-first  --time-style long-iso'
type eza &>/dev/null && alias la='eza -la --icons --no-user --group-directories-first  --time-style long-iso'

# [[ Shell integrations ]]
command -v fzf &>/dev/null && eval "$(fzf --zsh)" && source ~/.fzf.zshrc
command -v zoxide &>/dev/null && eval "$(zoxide init --cmd cd zsh)"
command -v thefuck &>/dev/null && eval "$(thefuck --alias)"
command -v fzf &>/dev/null && source ~/.fzf.git.zshrc.sh # credits https://github.com/junegunn/fzf-git.sh


# [[ Exports ]]
export FZF_CTRL_R_OPTS="
--bind 'ctrl-y:execute-silent(echo -n {2..} | xclip -sel clip)+abort'
--color header:italic
--header 'Press CTRL-Y to copy command into clipboard'
--tmux right,50%"

# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
--walker-skip .git,node_modules,target
--preview 'eza --icons --group-directories-first --tree {}'
--tmux 70%"

# Preview file content using bat
export FZF_CTRL_T_OPTS="
--walker-skip .git,node_modules,target
--preview 'bat -n --color=always {}'
--header 'CTRL-/ Toggle preview window\nALT-/ Toggle Wrapping'
--bind 'ctrl-/:change-preview-window(down|hidden|)'
--bind 'alt-/:toggle-preview-wrap'
--tmux 80%"

export ZSH_WAKATIME_PROJECT_DETECTION=true
export EDITOR=zeditor
export VISUAL=zeditor

# [[ Utility Functions ]]
if [[ -f ~/.func.zshrc.sh ]]; then
    source ~/.func.zshrc.sh
fi
