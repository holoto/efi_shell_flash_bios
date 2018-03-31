# efi_shell_flash_bios
Efi_shell_flash_bios

## Use uefi shell + fpt to flash BIOS

Prepare a U disk

Partition format format is GPT mode

Copy the files of this directory to the EFI partition

Boot this U disk to enter UEFI SHELL

Enter `FS2:` to enter the EFI directory of the U disk

## Choose the right version based on your needs

A32.efi afu latest 32-bit version of EFI
A32.4.efi afu 32-bit EFI version (v4)
A64.efi afu latest 64-bit version of EFI
A64.4.efi afu64-bit EFI version (v4)

Fpt.efi fpt latest 32-bit version of EFI
Fpt64.efi fpt latest 64-bit version of EFI


# fpt strong brush (unlocked menu version must use FPT to enter)

` fpt -f bios.rom -bios`

8440logo w650dc-8400-unlock-hide-menu.zip
Based on dsanke's bios
Unlock all menus
Logo change to gigas auros
Must use FPT to flash