_importPathIfExists() {
	if [ -d "$1" ]; then
		export PATH="$PATH:$1"
	fi
}

_sourceIfExists() {
  [[ -f $1 ]] && . $1
}
