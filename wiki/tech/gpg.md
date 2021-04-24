# GPG/GnuPG

## Key Management

List all locally installed public keys:
```sh
gpg -k
```

List private keys:
```sh
gpg -K
```

Export a specific keypair's public key:
```sh
gpg --export --armor name@email > name-public.

# --armor wraps it around 'BEGIN PGP PUBLIC KEY BLOCK'
# Without --armor it exports binary (I guess?)
```

Notes:
* GnuPG requires both public and private keys to be sted in GnuPG keyring to encrypt/decrypt. 

---

## Encrypt/Decrpyt

Decrpyt a file:
```sh
gpg --decrypt filename

# Note: You need to have private key in GnuPG keyring
# See Key Management section
```

---

## Applications

Arch Linux:
- GPG wiki page: <https://wiki.archlinux.org/index.php/GnuPG>
- Core package: [gnupg](https://archlinux.org/packages/core/x86_64/gnupg)
- UI App: [gpg-crypter](https://archlinux.org/packages/community/x86_64/gpg-crypter/)
- [Wiki: Other applications](https://wiki.archlinux.org/index.php/List_of_applications/Security#Encryption,_signing,_steganography)
