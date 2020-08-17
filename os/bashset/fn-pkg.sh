pkg_install_array() {
  if [ -z "$*" ]; then return; fi
  pikaur --needed -S $*
}

pkg_delete_array() {
  if [ -z "$*" ]; then return; fi
  pikaur -Rscnu $*
}