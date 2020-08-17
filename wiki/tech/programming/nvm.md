Faster way of loading:

```sh
# NVM > Faster
# https://github.com/nvm-sh/nvm/issues/1277#issuecomment-501056081
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"
#
[ ! -r ~/.nvm/nvm.sh ] || {
	function nvm() {
		unset -f nvm node npm
		. ~/.nvm/nvm.sh
		nvm use node >/dev/null
		[ ! -r ~/.nvm/bash_completion ] || . ~/.nvm/bash_completion
		nvm ${1+"$@"}
	}
}
```
