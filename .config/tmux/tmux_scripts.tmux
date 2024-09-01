 # exit the script if any statement returns a non-true return value
set -e

unset GREP_OPTIONS
export LC_NUMERIC=C
[ -z "$TMUX" ] && exit 255
if [ -z "$TMUX_SOCKET" ]; then
  TMUX_SOCKET=$(printf '%s' "$TMUX" | cut -d, -f1)
fi
if [ -z "$TMUX_PROGRAM" ]; then
  TMUX_PID=$(printf '%s' "$TMUX" | cut -d, -f2)
  TMUX_PROGRAM=$(lsof -b -w -a -d txt -p "$TMUX_PID" -Fn 2>/dev/null | perl -n -e "if (s/^n((?:.(?!dylib$|so$))+)$/\1/g) { print; exit } } exit 1; {" || readlink "/proc/$TMUX_PID/exe" 2>/dev/null || printf tmux)
fi
if [ "$TMUX_PROGRAM" = "tmux" ]; then
  tmux() {
    command tmux ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} "$@"
  }
else
  tmux() {
    "$TMUX_PROGRAM" ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} "$@"
  }
fi



_maximize_pane() {
  current_session=${1:-$(tmux display -p '#{session_name}')}
  current_pane=${2:-$(tmux display -p '#{pane_id}')}

  dead_panes=$(tmux list-panes -s -t "$current_session" -F '#{pane_dead} #{pane_id} #{pane_start_command}' | grep -E -o '^1 %.+maximized.+$' || true)
  restore=$(printf "%s" "$dead_panes" | sed -n -E -e "s/^1 $current_pane .+maximized.+'(%[0-9]+)'\"?$/tmux swap-pane -s \1 -t $current_pane \; kill-pane -t $current_pane/p"\
                                           -e "s/^1 (%[0-9]+) .+maximized.+'$current_pane'\"?$/tmux swap-pane -s \1 -t $current_pane \; kill-pane -t \1/p")

  if [ -z "$restore" ]; then
    [ "$(tmux list-panes -t "$current_session:" | wc -l | sed 's/^ *//g')" -eq 1 ] && tmux display "Can't maximize with only one pane" && return
    info=$(tmux new-window -t "$current_session:" -F "#{session_name}:#{window_index}.#{pane_id}" -P "maximized... 2>/dev/null & \"$TMUX_PROGRAM\" ${TMUX_SOCKET:+-S \"$TMUX_SOCKET\"} setw -t \"$current_session:\" remain-on-exit on; printf \"\\033[\$(tput lines);0fPane has been maximized, press <prefix>+ to restore\n\" '$current_pane'")
    session_window=${info%.*}
    new_pane=${info#*.}

    retry=20
    while [ "$("$TMUX_PROGRAM" ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} list-panes -t "$session_window" -F '#{session_name}:#{window_index}.#{pane_id} #{pane_dead}' 2>/dev/null)" != "$info 1" ] && [ "$retry" -ne 0 ]; do
      sleep 0.1
      retry=$((retry - 1))
    done
    if [ "$retry" -eq 0 ]; then
      tmux display 'Unable to maximize pane'
    fi

    tmux setw -t "$session_window" remain-on-exit off \; swap-pane -s "$current_pane" -t "$new_pane"
  else
    $restore || tmux kill-pane
  fi
}

_toggle_mouse() {
  old=$(tmux show -gv mouse)
  new=""

  if [ "$old" = "on" ]; then
    new="off"
  else
    new="on"
  fi

  tmux set -g mouse $new
}

_pane_info() {
  pane_pid="$1"
  pane_tty="${2##/dev/}"
  case "$_uname_s" in
    *CYGWIN*)
      ps -al | tail -n +2 | awk -v pane_pid="$pane_pid" -v tty="$pane_tty" '
        ((/ssh/ && !/-W/ && !/tsh proxy ssh/ &!/sss_ssh_knownhostsproxy/) || !/ssh/) && !/tee/ && $5 == tty {
          user[$1] = $6; if (!child[$2]) child[$2] = $1
        }
        END {
          pid = pane_pid
          while (child[pid])
            pid = child[pid]

          file = "/proc/" pid "/cmdline"; getline command < file; close(file)
          gsub(/\0/, " ", command)
          "id -un " user[pid] | getline username
          print pid":"username":"command
        }
      '
      ;;
    *Linux*)
      ps -t "$pane_tty" --sort=lstart -o user=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -o pid= -o ppid= -o command= | awk -v pane_pid="$pane_pid" '
        ((/ssh/ && !/-W/ && !/tsh proxy ssh/ && !/sss_ssh_knownhostsproxy/) || !/ssh/) && !/tee/ {
          user[$2] = $1; if (!child[$3]) child[$3] = $2; pid=$2; $1 = $2 = $3 = ""; command[pid] = substr($0,4)
        }
        END {
          pid = pane_pid
          while (child[pid])
            pid = child[pid]

          print pid":"user[pid]":"command[pid]
        }
      '
      ;;
    *)
      ps -t "/dev/$pane_tty" -o user=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -o pid= -o ppid= -o command= | awk -v pane_pid="$pane_pid" '
        ((/ssh/ && !/-W/ && !/tsh proxy ssh/ && !/sss_ssh_knownhostsproxy/) || !/ssh/) && !/tee/ {
          user[$2] = $1; if (!child[$3]) child[$3] = $2; pid=$2; $1 = $2 = $3 = ""; command[pid] = substr($0,4)
        }
        END {
          pid = pane_pid
          while (child[pid])
            pid = child[pid]

          print pid":"user[pid]":"command[pid]
        }
      '
      ;;
  esac
}


_new_window() {
  _new_window_ssh "$@"
}


_split_window() {
  _split_window_ssh "$@"
}

_apply_tmux_256color() {
  case "$(tmux show -gv default-terminal)" in
    tmux-256color|tmux-direct)
      return
      ;;
  esac

  # when tmux-256color is available, use it
  # on macOS though, make sure to use /usr/bin/infocmp to probe if it's availalbe system wide
  case "$_uname_s" in
    *Darwin*)
      if /usr/bin/infocmp -x tmux-256color > /dev/null 2>&1; then
        tmux set -g default-terminal 'tmux-256color'
      fi
      ;;
     *)
      if command infocmp -x tmux-256color > /dev/null 2>&1; then
        tmux set -g default-terminal 'tmux-256color'
      fi
      ;;
  esac
}

_apply_24b() {
  tmux_conf_theme_24b_colour=${tmux_conf_theme_24b_colour:-auto}
  tmux_conf_24b_colour=${tmux_conf_24b_colour:-$tmux_conf_theme_24b_colour}
  if [ "$tmux_conf_24b_colour" = "auto" ]; then
    case "$COLORTERM" in
      truecolor|24bit)
        apply_24b=true
        ;;
    esac
    if [ "$apply_24b" = "" ] && [ "$(tput colors)" = "16777216" ]; then
      apply_24b=true
    fi
  elif _is_true "$tmux_conf_24b_colour"; then
    apply_24b=true
  fi
  if [ "$apply_24b" = "true" ]; then
    case "$TERM" in
      screen-*|tmux-*)
        ;;
      *)
        tmux set-option -ga terminal-overrides ",*256col*:Tc"
        ;;
    esac
  fi
}

tmux_conf_copy_to_os_clipboard=${tmux_conf_copy_to_os_clipboard:-true}

command -v xsel > /dev/null 2>&1 && command='xsel -i -b'
! command -v xsel > /dev/null 2>&1 && command -v xclip > /dev/null 2>&1 && command='xclip -i -selection clipboard > /dev/null 2>&1'
[ "$XDG_SESSION_TYPE" = "wayland" ] && command -v wl-copy > /dev/null 2>&1 && command='wl-copy'
command -v pbcopy > /dev/null 2>&1 && command='pbcopy'
command -v clip.exe > /dev/null 2>&1 && command='clip.exe'
[ -c /dev/clipboard ] && command='cat > /dev/clipboard'

if [ -n "$command" ]; then
  if ! _is_disabled "$tmux_conf_copy_to_os_clipboard" && _is_true "$tmux_conf_copy_to_os_clipboard"; then
    perl -p -i -e "s/\bcopy-(?:selection|pipe)(-end-of-line|-and-cancel|-end-of-line-and-cancel|-no-clear)?\b/copy-pipe\1 '$command'/g" "$cfg"
  else
    if [ "$_tmux_version" -ge 320 ]; then
      perl -p -i -e "s/\bcopy-pipe(-end-of-line|-and-cancel|-end-of-line-and-cancel|-no-clear)?\b\s+(\"|')?$command\2?/copy-pipe\1/g" "$cfg"
    else
      perl -p -i -e "s/\bcopy-pipe(-end-of-line|-and-cancel|-end-of-line-and-cancel|-no-clear)?\b\s+(\"|')?$command\2?/copy-selection\1/g" "$cfg"
    fi
  fi
fi

_urlview() {
  pane_id="$1"; shift
  tmux capture-pane -J -S - -E - -b "urlview-$pane_id" -t "$pane_id"
  tmux split-window "'$TMUX_PROGRAM' ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} show-buffer -b 'urlview-$pane_id' | urlview || true; '$TMUX_PROGRAM' ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} delete-buffer -b 'urlview-$pane_id'"
}

_urlscan() {
  pane_id="$1"; shift
  tmux capture-pane -J -S - -E - -b "urlscan-$pane_id" -t "$pane_id"
  tmux split-window "'$TMUX_PROGRAM' ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} show-buffer -b 'urlscan-$pane_id' | urlscan $* || true; '$TMUX_PROGRAM' ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} delete-buffer -b 'urlscan-$pane_id'"
}

_fpp() {
  tmux capture-pane -J -S - -E - -b "fpp-$1" -t "$1"
  tmux split-window -c "$2" "'$TMUX_PROGRAM' ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} show-buffer -b 'fpp-$1' | fpp || true; '$TMUX_PROGRAM' ${TMUX_SOCKET:+-S "$TMUX_SOCKET"} delete-buffer -b 'fpp-$1'"
}

"$@"
