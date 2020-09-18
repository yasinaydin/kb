# Fixing errors and warnings on logs

## lightdm "unable to locate daemon control file"

- Seems to be related to gnome-keyring
- Probably will be fixed with a newer version

Solution:
```sh
sil gnome-keyring
```
Sources:
- <https://github.com/canonical/lightdm/issues/70>
- <https://forum.manjaro.org/t/lightdm-gkr-pam-unable-to-locate-daemon-control-file/85219>
