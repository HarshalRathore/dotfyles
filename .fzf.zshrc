export FZF_DEFAULT_OPTS='
  --color=fg:-1,fg+:-1,bg:-1,bg+:-1
  --color=hl:#f38ba8,hl+:#5fd7ff,info:#cba6f7,marker:#f5e0dc
  --color=prompt:#cba6f7,spinner:#f5e0dc,pointer:#f5e0dc,header:#f38ba8
  --color=border:#6c7086,label:#aeaeae,query:#d9d9d9
  --border="rounded" 
  --preview-window="border-rounded" 
  --prompt="> " 
  --marker=">" 
  --pointer=" " 
  --separator="─" 
  --scrollbar="│"
  --layout="reverse" 
  --info="right"
'
export FZF_COMPLETION_OPTS=$FZF_DEFAULT_OPTS
export FZF_CTRL_T_OPTS=$FZF_DEFAULT_OPTS
# export FZF_CTRL_R_OPTS=$FZF_DEFAULT_OPTS"
#   --preview 'echo {}'
#   --preview-window down:3:hidden:wrap
#   --bind '?:toggle-preview'
#   "
# export FZF_ALT_C_OPTS=$FZF_DEFAULT_OPTS'
#  --preview "tree -C {} | head -200"
# '
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git --exclude node_modules --exclude .mypy_cache --exclude __pycache__ --exclude .myenv --exclude .venv --exclude .vscode --exclude .pytest --exclude migrations'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND=$FZF_DEFAULT_COMMAND
