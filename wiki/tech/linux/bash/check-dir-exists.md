check if a folder/directory exists

https://www.cyberciti.biz/faq/check-if-a-directory-exists-in-linux-or-unix-shell/


```sh
loadDirIfExists() {
	if [ -d "$1" ]; then
		export PATH="$PATH:$1"
	fi
}
```
