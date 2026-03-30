run() {
  killall "$1"
  "$@" &
}

function run_polkit() {

  # Launch polkit agent after closing other polkits
  agents=(
    polkit-gnome-authentication-agent-1
    lxqt-policykit
    polkit-kde-authentication-agent-1
    xfce-polkit
  )

  for agent in "${agents[@]}"; do
    pid=$(pgrep -f "$agent")
    if [[ -n "$pid" ]]; then
      kill "$pid"
    fi
  done
  killall "$1"

  run "$1"
}

function _log() {
  echo "[$(date +%H:%M:%S)][$1] $2" >>"$BSPWM_LOG"
}

function log() {
  _log "INFO" "$1"
}

function log_debug() {
  _log "DEBUG" "$1"
}

function log_warn() {
  _log "WARN" "$1"
}

function log_err() {
  _log "ERR" "$1"
}
