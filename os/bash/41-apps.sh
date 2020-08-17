# aws-cli
if [ -x "$(command -v aws)" ]; then
	export SAM_CLI_TELEMETRY=0
fi

# ccache
if pacman -Q ccache > /dev/null 2>&1; then
	export CCACHE_DIR=/tmp/ccache
	# is it needed?
	_importPathIfExists "/usr/lib/ccache/bin"
fi

# chromium
if [ -x "$(command -v chromium)" ]; then
	export BROWSER=chromium
	export CHROME_BIN=/usr/bin/chromium
fi

# journalctl
if [ -x "$(command -v journalctl)" ]; then
  alias logs="journalctl -m -p warning" 
  alias logs-rotate="sudo journalctl --rotate" 
  alias logs-vacuum="sudo journalctl --vacuum-time=1s" 
fi

# kubectl
if [ -x "$(command -v kubectl)" ]; then
	alias kubectl='kubectl -o yaml'
fi

# pacman
if [ -x "$(command -v pacman)" ]; then
  alias pacman="pacman --color=auto"
fi

# php
if [ -x "$(command -v php)" ]; then
	alias phps='php -S 0.0.0.0:8088'
fi

# pikaur
if [ -x "$(command -v pikaur)" ]; then
	alias pikaur="pikaur --color=auto"
fi

# python-pip
if [ -x "$(command -v pip)" ]; then
	# for user packages
  _importPathIfExists "$HOME/.local/bin"
fi

# rbenv - from arch
# if pacman -Q rbenv > /dev/null 2>&1; then
# 	eval "$(rbenv init -)"
# fi

# sencha
_importPathIfExists "$HOME/bin/Sencha/Cmd"

# vscode
if pacman -Q code > /dev/null 2>&1; then
	export DOTNET_CLI_TELEMETRY_OPTOUT=1
	export ELECTRON_TRASH=gio
	export VISUAL=code
fi
