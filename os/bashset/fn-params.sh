checkParamsExact() {
  if [ $1 -ne $2 ]; then
    exitWithError "$2 params required, $1 provided"
  fi
}
