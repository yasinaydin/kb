
group_add() {
  if [ -z "$1" ]; then return; fi

  msg_info "group_add: $1"
  sudo gpasswd -a $(whoami) $1
  # to refresh without restart
  newgrp -
  groups
  msg_info "group_add done"
}

group_delete() {
  FN="group_delete"

  msg_info2 $FN "init"

  if [ -z "$1" ]; then
    msg_info2 $FN "no group specified, exiting"
    return;
  fi

  if [ ! $(getent group $1) ]; then
    msg_info2 $FN "no such group as '$1', exiting"
    return
  fi

  msg_info2 $FN "trying to delete group '$1'"
  sudo groupdel $1
  msg_info2 $FN "deleted group '$1', done"
  return
}


group_delete_array() {
  arr=("$@")
  for i in "${arr[@]}"; do
    group_delete "$i"
  done
}

group_deleteuser() {
  FN="group_deleteuser"

  msg_info2 $FN "init"

  if [ -z "$1" ]; then
    msg_info2 $FN "no group specified, exiting"
    return;
  fi
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
