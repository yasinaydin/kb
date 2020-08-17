# todo rename systemctl to systemd


systemctl_service_enable() {
  msg_info "debug systemctl_service_enable init"

  if [ -z "$1" ]; then
    msg_info "no service specified"
    return;
  fi

  msg_info "systemctl_service_enable for $1"

  sudo systemctl daemon-reload
  sudo systemctl enable --now $1
  sudo systemctl daemon-reload

  msg_info "systemctl_service_enable $1 done"
}

systemctl_service_disable() {
  msg_info "debug systemctl_service_disable init"

  if [ -z "$1" ]; then
    msg_info "no service specified"
    return;
  fi

  msg_info "systemctl_service_disable for $1"

  sudo systemctl daemon-reload
  sudo systemctl disable --now $1
  sudo systemctl daemon-reload

  msg_info "systemctl_service_disable $1 done"
}
