#--------------------------------------------------------------#
##          Plugins                                           ##
#--------------------------------------------------------------#

# Set options for the Catppuccin tmux theme.
set -g @catppuccin_flavour 'mocha'

# Set options for the Tokyo Night tmux theme.
set -g @tokyo-night-tmux_show_datetime 0
set -g @tokyo-night-tmux_show_path 1
set -g @tokyo-night-tmux_path_format relative
set -g @tokyo-night-tmux_window_id_style dsquare
set -g @tokyo-night-tmux_pane_id_style hsquare
set -g @tokyo-night-tmux_show_git 1

# resurrect settings 
set -g @resurrect-capture-pane-contents 'on'
set -g @resurrect-strategy-nvim 'session'

set -g @fingers-jump-key S

# List of plugins to load with tmux.
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin "janoamaral/tokyo-night-tmux"

# Press prefix + j to invoke EasyJump.
# Press Ctrl + j to invoke EasyJump in copy mode.
# Press Enter to cancel EasyJump.
set -g @plugin "roy2220/easyjump.tmux"
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'

# <prefix> + u to open URLs in a bottom panel.
set -g @plugin 'tmux-plugins/tmux-urlview'

# <prefix> + S 
set -g @plugin 'Morantron/tmux-fingers'
# <prefix> + F
set -g @plugin 'sainnhe/tmux-fzf'
TMUX_FZF_LAUNCH_KEY="C-f"
TMUX_FZF_PANE_FORMAT="[#{window_name}] #{pane_current_command}  [#{pane_width}x#{pane_height}] [history #{history_size}/#{history_limit}, #{history_bytes} bytes] #{?pane_active,[active],[inactive]}"


#--------------------------------------------------------------#
##          Install/Execute tpm                               ##
#--------------------------------------------------------------#

# Define the plugin manager path
set-environment -g TMUX_PLUGIN_MANAGER_PATH "${TMUX_DATA_DIR}/plugins"

# Check if TPM is not installed and install it
if-shell '[ ! -d "${TMUX_PLUGIN_MANAGER_PATH}/tpm" ]' \
  'display-message "🚀 Installing Plugin Manager!!! Press Ctrl+Shift+I"; run-shell "git clone https://github.com/tmux-plugins/tpm ${TMUX_PLUGIN_MANAGER_PATH}/tpm"'

# Source TPM if it exists
if-shell '[ -f "${TMUX_PLUGIN_MANAGER_PATH}/tpm/tpm" ]' \
  'run-shell "${TMUX_PLUGIN_MANAGER_PATH}/tpm/tpm"'

# Initialize TPM (Tmux Plugin Manager) for managing plugins.
# run -b '~/.tmux/plugins/tpm/tpm'
