folder_create_array() {
  arr=("$@")
  for i in "${arr[@]}"; do
    mkdir -p "$i"
  done
}

file_delete_array_with_sudo() {
  arr=("$@")
  for i in "${arr[@]}"; do
    sudo rm -rf "$i"
  done
}

file_delete_array() {
  arr=("$@")
  for i in "${arr[@]}"; do
    rm -rf "$i"
  done
}

file_emptyfolder_array() {
  arr=("$@")
  for i in "${arr[@]}"; do
    emptyAndDeleteFolder "$i"
  done
}
