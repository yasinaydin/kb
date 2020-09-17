## removing user

Source: <https://wiki.archlinux.org/index.php/Users_and_groups#Other_examples_of_user_management>

```sh
# r: delete home folder and mail spool
userdel -r username
```

## delete user from group
```sh
sudo gpasswd -d user group
```

## reset password retries
```sh
$ su
# faillock --user yasin --reset
```
