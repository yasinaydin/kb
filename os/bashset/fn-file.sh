folder_create_array() {
  arr=("$@")
  for i in "${arr[@]}"; do
    mkdir -p "$i"
  done
}
