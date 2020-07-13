## .bashrc vs .bash_profie vs .profile

Sources:
- <https://superuser.com/questions/789448>
- <https://shreevatsa.wordpress.com/2008/03/30/zshbash-startup-files-loading-order-bashrc-zshrc-etc/>

- `~/.bash_profile` > load `.profile` and `.bashrc` in this order
- `~/.profile` > non-bash stuff like environment variables and PATH
- `~/.bashrc` > for bash/interactive command line, EDITOR variable, bash aliases

## home vs ~
- https://stackoverflow.com/questions/11587343/difference-between-home-and-tilde

## colors

- Source: <https://misc.flogisoft.com/bash/tip_colors_and_formatting>
- 91=lighred 33=yellow 32=green 36=can
- 1=bold 0=reset

## stderr

<https://riptutorial.com/bash/example/19824/print-error-messages-to-stderr>

## parameters

<http://tldp.org/LDP/abs/html/refcards.html#AEN22006>
