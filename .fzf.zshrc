export FZF_DEFAULT_OPTS='
    --border="rounded" 
    --color=fg:-1,fg+:-1,bg:-1,bg+:-1
    --color=hl:#f38ba8,hl+:#5fd7ff,info:#cba6f7,marker:#f5e0dc
    --color=prompt:#cba6f7,spinner:#f5e0dc,pointer:#f5e0dc,header:#f38ba8
    --color=border:#6c7086,label:#aeaeae,query:#d9d9d9
    --cycle
    --preview-window="border-rounded" 
    --prompt=" " 
    --marker=">" 
    --pointer=" " 
    --separator="─" 
    --scroll-off=5
    --height=90%
    --preview-window=border-left
    --scrollbar="│"
    --layout="reverse" 
    --info="right"
    --bind=page-down:preview-page-down,page-up:preview-page-up
    --bind=alt-enter:toggle+down,ctrl-a:toggle-all
'
export FZF_COMPLETION_OPTS=$FZF_DEFAULT_OPTS

export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git --exclude node_modules --exclude .mypy_cache --exclude __pycache__ --exclude .myenv --exclude .venv --exclude .vscode --exclude .pytest --exclude migrations'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND=$FZF_DEFAULT_COMMAND

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
