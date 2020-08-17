export kb="$HOME/git/yasin/kb"

. "$kb/os/bashset/init.sh"

_sourceIfExists "$kb/os/bash/20-bash.sh"
_sourceIfExists "$kb/os/bash/30-alias.sh"
_sourceIfExists "$kb/os/bash/40-asdf.sh"
_sourceIfExists "$kb/os/bash/41-apps.sh"
_importPathIfExists "$kb/os/scripts"
