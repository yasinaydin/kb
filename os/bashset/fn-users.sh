users_delete_array() {
  arr=("$@")

  for i in "${arr[@]}"; do
    sudo userdel -r "$i"
  done
}
