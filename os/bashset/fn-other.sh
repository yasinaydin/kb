# returl values https://www.linuxjournal.com/content/return-values-bash-functions
# date https://renenyffenegger.ch/notes/Linux/shell/commands/date


#!/bin/bash
# loaded by dependency order




exitWithError() {
  echo -e "${BG_LightRed}${C_Black} ERROR ${F_Reset} $*" >>/dev/stderr
  exit 1
  # echo -e "${BG_LightRed}${F_BoldOn}error:${F_Reset} $*" >>/dev/stderr
}

##########################

isArch() {
  if [ ! -f "/etc/arch-release" ]; then
    exitWithError "not arch linux"
  fi
}
