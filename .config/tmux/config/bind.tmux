#--------------------------------------------------------------#
##          Key Bind                                          ##
#--------------------------------------------------------------#

# Unset the default prefix key 
unbind C-b

# Set an additional prefix key for tmux commands.
set -g prefix C-a
# Allow the use of the secondary prefix key (C-a) to send the original prefix key.
bind -n C-a send-prefix 

set -g prefix2 C-Space
bind -n C-Space send-prefix

# Keybinding to open and source the tmux configuration file in a new window using the preferred editor.
bind e new-window -n "tmux.conf" -e EDITOR="$EDITOR" sh -c " \
  if command -v nvim >/dev/null 2>&1; then \
    EDITOR=nvim; \
  fi; \
  case \"\${EDITOR:-vim}\" in \
    *vim*) \
      \${EDITOR:-vim} -c ':set syntax=tmux' \"\$TMUX_CONF\" ;; \
    *) \
      \$EDITOR ~/.config/tmux/tmux.conf ;; \
  esac && \
  \"\$TMUX_PROGRAM\" \${TMUX_SOCKET:+-S \"\$TMUX_SOCKET\"} source \"\$TMUX_CONF\"; \
  tmux display-message 'Config sourced!' \
"

# Keybinding to open ~/.zshrc file in a new tmux window using the preferred editor.
bind | new-window -n "zshrc" -e EDITOR="$EDITOR" sh -c " \
  if command -v nvim >/dev/null 2>&1; then \
    EDITOR=nvim; \
  else \
    EDITOR=\${EDITOR:-vim}; \
  fi; \
  \
  case \"\$EDITOR\" in \
    *vim*) \
      \$EDITOR -c ':set syntax=zsh' \"\$HOME/.zshrc\" ;; \
    *) \
      \$EDITOR \"\$HOME/.zshrc\" ;; \
  esac && \
  source \"\$HOME/.zshrc\"; \
  tmux display-message '~/.zshrc sourced' \
"

# Fuzzy search and switch to tmux sessions
bind C-j \
  display-popup \
  -E "tmux list-sessions -F '#{?session_attached,,#{session_name}}' \
    | grep -v '^$' \
    | fzf --reverse \
    | xargs tmux switch-client -t"
    
# Keybinding to reload the tmux configuration file.
bind r run '"$TMUX_PROGRAM" ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} source "$TMUX_CONF"' \; display "#{TMUX_CONF} sourced"

# Bind C-c to create a new tmux session.
# bind C-c new-session

# Bind C-f to prompt for finding a session and switching to it.
bind T command-prompt -p find-session 'switch-client -t %%'

# Bind Shift-Tab to switch to the last active session.
bind BTab switch-client -l  

 
# -- window management ---------------------------------------------------------
 
# Split the current window horizontally, maintaining the current pane's working directory.
bind - split-window -v -c "#{pane_current_path}"

# Split the current window vertically, maintaining the current pane's working directory.
bind _ split-window -h -c "#{pane_current_path}"

# new window with current path
bind C-c new-window -c "#{pane_current_path}"

# Commenting below pane movement keys since we are already using 
# christoomey/vim-tmux-navigator plugin which provides C-hjkl movements 
# but without <prefix>before them
# Bind h, j, k, l for easy pane navigation in all directions.
#bind -r h select-pane -L  # move left
#bind -r j select-pane -D  # move down
#bind -r k select-pane -U  # move up
#bind -r l select-pane -R  # move right

# Bind C-h and C-l for window navigation: previous and next window respectively.
unbind-key  C-l
bind -r C-h previous-window 
bind-key -r C-l next-window     
bind -n M-left previous-window
bind -n M-right next-window

bind -n M-1 select-window -t :=1
bind -n M-2 select-window -t :=2
bind -n M-3 select-window -t :=3
bind -n M-4 select-window -t :=4
bind -n M-5 select-window -t :=5
bind -n M-6 select-window -t :=6
bind -n M-7 select-window -t :=7
bind -n M-8 select-window -t :=8
bind -n M-9 select-window -t :=9
bind -n M-0 select-window -t :=10


# Bind Tab to switch to the last active window.
bind Tab last-window        

# Shift-Alt-<number> to join panes in vertical split
bind-key -n M-! join-pane -v -t :=1
bind-key -n M-@ join-pane -v -t :=2
bind-key -n M-# join-pane -v -t :=3
bind-key -n M-$ join-pane -v -t :=4
bind-key -n M-% join-pane -v -t :=5
bind-key -n M-^ join-pane -v -t :=6
bind-key -n M-& join-pane -v -t :=7
bind-key -n M-* join-pane -v -t :=8
bind-key -n M-( join-pane -v -t :=9
bind-key -n M-) join-pane -v -t :=10

# Bind > and < for swapping panes with the next or previous pane.
bind > swap-pane -D       
bind < swap-pane -U       

# Bind H, J, K, L for resizing panes in all directions.
bind -r H resize-pane -L 2
bind -r J resize-pane -D 2
bind -r K resize-pane -U 2
bind -r L resize-pane -R 2

# Unbind default navigation keys for previous and next window.
unbind n
unbind p


# -- copy mode -----------------------------------------------------------------

# Bind Enter to enter copy mode in tmux.
bind Enter copy-mode -e 


# Bind v for starting selection, C-v for rectangle selection, and y for yanking in vi-mode.
bind -T copy-mode-vi v send -X begin-selection
bind -T copy-mode-vi C-v send -X rectangle-toggle
bind -T copy-mode-vi y send -X copy-selection-and-cancel

# Bind Escape to cancel copy mode in vi-style.
bind -T copy-mode-vi Escape send -X cancel

# Bind H and L to move to the start and end of the line in vi-style copy mode.
bind -T copy-mode-vi H send -X start-of-line
bind -T copy-mode-vi L send -X end-of-line

# Copy mouse selected selection to system clipboard
bind -Tcopy-mode MouseDragEnd1Pane send -X copy-selection

if 'builtin command -v xsel > /dev/null 2>&1' \
  "run-shell 'tmux bind -Tcopy-mode-vi Enter send -X copy-pipe-and-cancel \"xsel -i --clipboard\"'"
if 'builtin command -v xclip > /dev/null 2>&1' \
  "run-shell 'tmux bind -Tcopy-mode-vi Enter send -X copy-pipe-and-cancel \"xclip -i -selection clipboard\"'"
if '$WAYLAND_DISPLAY != "" && builtin command -v wl-copy > /dev/null 2>&1' \
  "run-shell 'tmux bind -Tcopy-mode-vi Enter send -X copy-pipe-and-cancel \"wl-copy\"'"

# bind C to open a new pane to enter copy mode for the current panr
bind C {
	splitw -f -l30% ''
	set-hook -p pane-mode-changed 'if -F "#{!=:#{pane_mode},copy-mode}" "kill-pane"'
	copy-mode -s'{last}'
}
# -- buffers -------------------------------------------------------------------

# Bind b to list available paste buffers.
bind b list-buffers     

# Bind p to paste the top buffer content.
bind p paste-buffer -p  

# Bind P to choose which buffer to paste from.
bind P choose-buffer    

