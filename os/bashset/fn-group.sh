
group_add() {
  if [ -z "$1" ]; then return; fi

  msg_info "group_add: $1"
  sudo gpasswd -a $(whoami) $1
  # to refresh without restart
  newgrp -
  groups
  msg_info "group_add done"
}

oldgroup() {
  msg_info "oldgroup: $1"
  if [ -z "$1" ]; then return; fi
  sudo gpasswd -d $(whoami) $1
  sudo groupdel $1
  newgrp wheel
  id -g
  groups
  msg_info "oldgroup done"
}
