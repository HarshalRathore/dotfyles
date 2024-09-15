# autoload necessary functions into memory
autoload -Uz add-zsh-hook

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
# credits to https://junegunn.github.io/fzf/tips/ripgrep-integration/
rfn() (
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
# credits to https://junegunn.github.io/fzf/tips/ripgrep-integration/
z() {
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
rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

# Resetting the terminal with escape sequences
# credits https://wiki.archlinux.org/title/Zsh#Resetting_the_terminal_with_escape_sequences
function reset_broken_terminal () {
  printf '%b' '\e[0m\e(B\e)0\017\e[?5l\e7\e[0;0r\e8'
}

# Quick Open File
function o() {
	# skip `fzf` if file is fully named, e.g. through tab completion
	if [[ -f "$1" ]]; then
		nvim "$1"
		return 0
	fi

	# reloads one ctrl-h (`--bind=ctrl-h`) or as soon as there is no result found (`--bind=zero`)
	local color=$'s|([^/+]*)(/)|\e[0;36m\\1\e[0;33m\\2\e[0m|g'
	local reload="reload($FZF_DEFAULT_COMMAND --hidden --no-ignore --no-ignore-files \
		--glob='!/.git/' --glob='!node_modules' --glob='!.DS_Store' | sed -Ee '$color')"

	local selected
	selected=$(
		# shellcheck disable=2016
		zsh -c "$FZF_DEFAULT_COMMAND" | sed -Ee "$color" |
			fzf --select-1 --ansi --query="$*" --info=inline --header-first \
				--header="^H: --hidden" --bind="ctrl-h:$reload" \
				--keep-right --scheme=path --tiebreak=length,end \
				--delimiter="/" --with-nth=-2.. --nth=-2.. \
				--bind="zero:$reload" \
				--preview-window="55%" \
				--preview '[[ $(file --mime {}) =~ text ]] && bat --color=always --wrap=never --style=header-filesize,header-filename,grid {} || file {} | fold -w $FZF_PREVIEW_COLUMNS' \
				--height="100%"
		# height of 100% required for wezterm's `pane:is_alt_screen_active()`
	)
	[[ -z "$selected" ]] && return 0
	nvim "$selected"
}

# open last changed file in cwd
function oo {
  local last_modified
  last_modified=$(find . -maxdepth 4 -type f  -not -path "./.git/**" -print0 | xargs -0 stat -c "%Y %n" | sort --numeric-sort --reverse | sed -n "1p" | cut -d" " -f2-)
  nvim "$last_modified"
}

# completions for it
_o() {
	local -a paths=()
	local -a names=()
	while IFS='' read -r file; do # turn lines into array
		paths+=("$file")
		names+=("$(basename "$file")")
	done < <(zsh -c "$FZF_DEFAULT_COMMAND --max-depth=3")

	local expl && _description -V files-in-pwd expl 'Files in PWD'
	compadd "${expl[@]}" -d names -a paths
}

function _search_venv_path {
	local dir_to_check=$PWD
	while true; do
		if [[ -d "$dir_to_check/.venv" ]]; then
			local venv_path="$dir_to_check/.venv"
			break
		elif [[ "$dir_to_check" == "/" ]]; then
			break
		fi
		dir_to_check=$(dirname "$dir_to_check")
	done
	echo "$venv_path"
}

# Utility function, intended for terminal movement commands. Automatically enables
# venv if current dir or a parent has a `.venv` dir. Disables venv if not.
function _auto_venv {
	local venv_path
	venv_path=$(_search_venv_path)

	if [[ -n "$VIRTUAL_ENV" && -z "$venv_path" ]]; then
		deactivate
	elif [[ -z "$VIRTUAL_ENV" && -n "$venv_path" ]]; then
		source "$venv_path/bin/activate"
	fi
}

autoload -U +X compinit && compinit
compdef _o o

# POST-DIRECTORY-CHANGE-HOOK
# (use `cd -q` to suppress this hook)
function chpwd {
	_auto_venv
}

# Register custom functions on zsh hooks
add-zsh-hook -Uz precmd rehash_precmd
# add-zsh-hook -Uz precmd reset_broken_terminal # gives error with powerlevel10k instant prompt
