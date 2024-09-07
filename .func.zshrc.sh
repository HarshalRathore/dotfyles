
# [[ Overriding ]]
# To create files with touch including the path!
touch() {
  for arg in "$@"; do   # Loop through all arguments
    local dir_path=$(dirname "$arg") # Extract the directory part of the path
    if [ ! -d "$dir_path" ]; then # Create the directory if it doesn't exist
      mkdir -p "$dir_path"
    fi
    command touch "$arg" # Use the original 'touch' command to create the file
  done
}

# ripgrep+fzf+neovim => 🔥🔥
rfn() (
# credits to https://junegunn.github.io/fzf/tips/ripgrep-integration/
  RELOAD='reload:rg --column --color=always --smart-case {q} || :'
  OPENER='if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
             nvim {1} +{2}     # No selection. Open the current line in Vim.
          else
             nvim +cw -q {+f}  # Build quickfix list for the selected items.
          fi'
  fzf --disabled --ansi --multi \
      --bind "start:$RELOAD" --bind "change:$RELOAD" \
      --bind "enter:become:$OPENER" \
      --bind "ctrl-o:execute:$OPENER" \
      --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
      --delimiter : \
      --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
      --preview-window '~4,+{2}+4/3,<80(up)' \
      --query "$*"
)

# fuzily search through most visite directories
z() {
# credits to https://junegunn.github.io/fzf/tips/ripgrep-integration/
  local dir=$(
    zoxide query --list --score |
    fzf --height 40% --layout reverse --info inline \
        --nth 2.. --tac --no-sort --query "$*" \
        --bind 'enter:become:echo {2..}'
  ) && cd "$dir"
}

# On-demand ZSH rehashing based on pacman hook
# credits https://wiki.archlinux.org/title/Zsh#On-demand_rehash
zshcache_time="$(date +%s%N)"
autoload -Uz add-zsh-hook
rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}
add-zsh-hook -Uz precmd rehash_precmd
