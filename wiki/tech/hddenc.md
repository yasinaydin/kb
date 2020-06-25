# Disk Encrpyiton

## General Links

Disk encryption theory:
- <https://en.wikipedia.org/wiki/Disk_encryption>
- <https://en.wikipedia.org/wiki/Disk_encryption_theory>
- <https://en.wikipedia.org/wiki/Hardware-based_full_disk_encryption>

Software:
- <https://en.wikipedia.org/wiki/Disk_encryption_software>
- <https://en.wikipedia.org/wiki/Comparison_of_disk_encryption_software>

Security:
- Cold Boot Attack - <https://en.wikipedia.org/wiki/Cold_boot_attack>
- Plausible deniability - <https://en.wikipedia.org/wiki/Plausible_deniability#Use_in_cryptography>
- Deniable encryption - <https://en.wikipedia.org/wiki/Deniable_encryption>
- Crypto-shredding - <https://en.wikipedia.org/wiki/Crypto-shredding>
- Yubikey - <https://en.wikipedia.org/wiki/YubiKey>
- Pre-boot Authentication - <https://en.wikipedia.org/wiki/Pre-boot_authentication>
- Data-at-rest - <https://en.wikipedia.org/wiki/Data_at_rest>
- Evil maid attack - <https://en.wikipedia.org/wiki/Evil_maid_attack>

## Terminology

- BC: Bridge and Chipset (type of FDE)
- FDE: Full disk encryption
- LUKS: Linux Unified Key Setup
- PBA: Pre-boot authentication
- SED: Self encrypting drive
- TC: Trusted Computing
- TCG: Trusted Computing Group
- TPM: Trusted Platform Module, by TCG

## Categories

1. Hardware-based full disk encryption (FDE)
   1. Hard disk drive (HDD) FDE (self-encrypting drive)
      1. Opal
   2. Enclosed hard disk drive FDE (tamper protection, eg: Viasat UK FlagStone, Eclypt)
   3. Removable Hard Drive FDE
   4. Bridge and Chipset (BC) FDE (eg: intel danbory)
2. Disk encryption software (mounts drives)
   1. Cross platform: TrueCrypt> forked into VeraCrypt, CipherShed
   2. Windows: Bitlocker
   3. Apple: File Vault
   4. Linux: dm-crypt/LUKS
3. Other info
   1. TPM

## 1. FDE

vendors:  Hitachi, iStorage Limited, Seagate Technology, Samsung, Toshiba, Viasat UK, Western Digital, Micron, OCZ, SanDisk, Samsung, Integral Memory and USB vendors such as Yubikey or iStorage Limited

symmetric encryption key separate from CPU, memory is not an attack vector
complete data storage encrypted

## 1.1 SED

- done via **TCG OPAL**
- 128 or 256 bit AES
- auth on power on, either via **software preboot** or **BIOS pass**
- SATA vendors: Hitachi, Micron, Seagate, Samsung, and Toshiba
- there are also legacy PATA vendors: Seagate DriveTrust, Western Digital
- Enterprise version on TCG Enterprise drives

characs: 
- Data at rest protection (powered off)
- Cryptographic Disk Erasure / Crypto-shredding 
  - when a key is deleted/overwritten, old data is unreachable. fast disk sanitisation
- Protection from alternative boot methods: all data reqs are thru disk Firmware and MBR is encrypted in the disk, hidden, so only special SED partitions can boot OS

## 1.1.1 SED via OPAL

Steps:
- If UEFI, Secure Boot must be disabled: <https://wiki.archlinux.org/index.php/Unified_Extensible_Firmware_Interface/Secure_Boot#Disable_Secure_Boot>
- Steps: <https://github.com/Drive-Trust-Alliance/sedutil/wiki/Encrypting-your-drive>

Other info:
- arch wiki - [Self-encrypting drives](https://wiki.archlinux.org/index.php/Self-encrypting_drives)
- dell - [Troubleshooting Hard Drive Encryption Issues](https://www.dell.com/support/article/en-ee/sln155364/troubleshooting-hard-drive-encryption-issues?lang=en#What_is_TPM)
- wikipedia - [Opal SSC (Security Subsystem Class)](https://en.wikipedia.org/wiki/Opal_Storage_Specification)

## 2.3 FileVault

Source:
- <https://en.wikipedia.org/wiki/FileVault>

Feats:
- Done via apple's TPM chip Apple T2 and also hw disk enc?
- 2019 and newer laptops have enc enabled by deffault, FileVault only changes keys, hence the speed
- authorised users' information is loaded from a separate non-encrypted boot volume[4] (partition/slice type Apple_Boot)

## 2.4 LUKS/dm-crypt via Device Mapper

Source:
- <https://en.wikipedia.org/wiki/Linux_Unified_Key_Setup>
- <https://en.wikipedia.org/wiki/Device_mapper>
- <https://en.wikipedia.org/wiki/Dm-crypt>

Device mapper used for:
- LVM/LVM2
- Software RAID
- dm-crypt

Layers:
- (app/user space?) crypt setup | /dev/mapper/xx
- (kernel) LUKS interface
- (kernel) Encryption layer: Device mapper, dmcrypt
- (kernel) driver
- (hardware) Physical block storage, MMC, SED, OPAL

![alt](https://www.cyrill-gremaud.ch/wp-content/uploads/2015/06/luks-layers.png)

## 3.1 TPM NVRAM

Source:
- <https://en.wikipedia.org/wiki/Disk_encryption#Disk_encryption_and_Trusted_Platform_Module>
- <https://en.wikipedia.org/wiki/Secure_cryptoprocessor>
- <https://en.wikipedia.org/wiki/Trusted_Platform_Module>

Provides:
- Random number gen
- Secure crypto key gen
- Remote attestation: HW+SW config hash gen, against Evil Maid Attack

Feats:
- Hardware encryption, so if disk is removed from the device, disk is unusable

Detect version:
```sh
dmesg | grep -i tpm
cat /sys/class/tpm/tpm*/tpm_version_major
```

Package in arch:
```sh
pacman -S tpm2-tools
```
