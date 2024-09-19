#--------------------------------------------------------------#
##          Environments                                      ##
#--------------------------------------------------------------#

set-environment -g TMUX_DATA_DIR "${HOME}/.local/share/tmux"

# Set the TMUX_CONF variable to track the location of the current tmux configuration file.
# Set the TMUX_PROGRAM variable to track the path of the tmux binary being used.
%if #{==:#{TMUX_PROGRAM},}
  run 'TMUX_PROGRAM="$(LSOF=$(PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin" command -v lsof); \
  $LSOF -b -w -a -d txt -p #{pid} -Fn 2>/dev/null | perl -n -e "if (s/^n((?:.(?!dylib$|so$))+)$/\1/g && \
  s/(?:\s+\([^\s]+?\))?$//g) { print; exit } } exit 1; {" || readlink "/proc/#{pid}/exe" 2>/dev/null)"; \
  {[ -f "$TMUX_PROGRAM" ] && [ -x "$TMUX_PROGRAM" ]} || TMUX_PROGRAM="$(command -v tmux || printf tmux)"; \
  "$TMUX_PROGRAM" -S #{socket_path} set-environment -g TMUX_PROGRAM "$TMUX_PROGRAM"'
%endif

# Set the TMUX_SOCKET variable to track the socket path being used by tmux.
%if #{==:#{TMUX_SOCKET},}
  run '"$TMUX_PROGRAM" -S #{socket_path} set-environment -g TMUX_SOCKET "#{socket_path}"'
%endif

# Set the TMUX_CONF variable to track the location of the tmux configuration file.
%if #{==:#{TMUX_CONF},}
  run '"$TMUX_PROGRAM" set-environment -g TMUX_CONF $(for conf in "$HOME/.tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf" \
  "$HOME/.config/tmux/tmux.conf"; do [ -f "$conf" ] && printf "%s" "$conf" && break; done)'
%endif


#--------------------------------------------------------------#
##          Base                                              ##
#--------------------------------------------------------------#

# Enable true color support in xterm-compatible terminals.
set-option -sa terminal-overrides ",xterm*:Tc" 

set-option -g default-terminal "screen-256color"

# Temporary settings
set -ga terminal-overrides '*:Ss=\E[%p1%d q:Se=\E[ q' # see :h tui-cursor-shape in nvim for this setting

# Enable focus events to detect when the terminal gains or loses focus.
set -s focus-events on     

# Enable mouse support for selecting panes, resizing, and scrolling.
set -g mouse on            


# Maximum number of lines in window history
set-option -g history-limit 10000

# Start window numbering from 1.
set -g base-index 1           

# Ensure pane numbering is consistent with window numbering.
setw -g pane-base-index 1     

# Automatically rename windows to reflect the currently active program.
set -g automatic-rename on   

# Renumber windows after closing a window.
set -g renumber-windows on    

# Set the terminal title to reflect the current tmux session and window.
set -g set-titles on          

# Set the terminal title string to show pane title, session name, and window details.
set -g set-titles-string ' ~ #T'

# Set a slightly longer display time for pane indicators.
set -g display-panes-time 800 

# Set a slightly longer display time for status messages.
set -g display-time 3000      

# Ensure pane numbering starts from 1 in each window.
setw -g pane-base-index 1

set-option -g set-clipboard on

# Use vi-style key bindings in copy mode.
setw -g mode-keys vi

# Enable pane border status at the top
# set-hook -g window-linked 'run-shell "tmux setw -t #{window_id} pane-border-status top"'

# Zen-full pane border format with minimal and useful information
# set -g pane-border-format "#{pane_current_command}:#{pane_index}"

# set-hook -g after-new-window 'set allow-passthrough on'

set-option -g pane-border-lines heavy




