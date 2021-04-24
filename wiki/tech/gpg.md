# GPG

List all locally installed keys:
```sh
gpg -k
```

Export a specific keypair's public key:
```sh
gpg --export --armor name@email > name-public.gpg
# --armor wraps it around 'BEGIN PGP PUBLIC KEY BLOCK'
# Without --armor it exports binary (I guess?)
```
