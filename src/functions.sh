run() {
  if pidof -q "$1"; then
    killall -- "$1"
    while pidof -q "$1"; do sleep 0.1; done
  fi
  "$@" &
  return 0
}

run_polkit() {

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

  retrun "$(run "$1")"
}

_log() {
  echo "[$(date +%H:%M:%S)][$1] $2" >>"$BSPWM_LOG"
}

log() {
  _log "INFO" "$1"
}

log_debug() {
  _log "DEBUG" "$1"
}

log_warn() {
  _log "WARN" "$1"
}

log_err() {
  _log "ERR" "$1"
}
