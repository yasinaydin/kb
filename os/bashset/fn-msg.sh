msg_warn() {
  echo -e "${BG_Yellow}${C_Black} WARN ${F_Reset} ${C_Yellow}${*}${F_Reset}"
}
msg_warn2() {
  echo -e "${C_Yellow}$1:${F_Reset} $2"
}

msg_info() {
  echo -e "${BG_LightBlue}${C_Black} INFO ${F_Reset} $*"
}

msg_info2() {
  echo -e "${C_Cyan}$1:${F_Reset} $2"
}

msg_ok() {
  echo -e "${BG_Green}${C_Black} DONE ${F_Reset} ${C_Green}${1}${F_Reset}"
}
