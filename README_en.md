# efi shell for flash_bios
use efi shell to flash bios

## Use uefi shell + fpt to flash BIOS

Prepare a U disk

Partition format format is GPT mode

Copy the files of this directory to the EFI partition

Boot this U disk to enter UEFI SHELL

### bios -> boot设置为 uefi boot
## Choose the right version based on your needs

A32.efi afu latest 32-bit version of EFI

A32.4.efi afu 32-bit EFI version (v4)

A64.efi afu latest 64-bit version of EFI

A64.4.efi afu64-bit EFI version (v4)

Fpt.efi fpt latest 32-bit version of EFI

Fpt64.efi fpt latest 64-bit version of EFI


# fpt strong brush (unlocked menu version must use FPT to enter)

` fpt -f bios.rom -bios`

Based on dsanke's bios

Unlock all menus

Logo change to gigas auros

Must use FPT to flash

# grub efi shell for setup_var

EFI/BOOT irectory hava grub efi shell file

 use grub efi shell setting bios hide menu

## Preparation tool
download [uefitool](https://github.com/LongSoft/UEFITool/releases)

download [Universal-IFR-Extractor](https://github.com/LongSoft/Universal-IFR-Extractor/releases)
## use [uefitool](https://github.com/LongSoft/UEFITool/releases) Extract the Setup menu
Find bios lock
![PbGxVx.png](https://s1.ax1x.com/2018/08/26/PbGxVx.png)


![PbJSIK.png](https://s1.ax1x.com/2018/08/26/PbJSIK.png)

Extract

![PbJ9PO.png](https://s1.ax1x.com/2018/08/26/PbJ9PO.png)

## use [Universal-IFR-Extractor](https://github.com/LongSoft/Universal-IFR-Extractor/releases) Convert the setup menu to text
on mac
![PbJCGD.png](https://s1.ax1x.com/2018/08/26/PbJCGD.png)

## Find the setting address in the extracted text

![PbYeX9.png](https://s1.ax1x.com/2018/08/26/PbYeX9.png)



Menu description

![5D682u.png](https://s1.ax2x.com/2018/08/26/5D682u.png)

`one of` menu 

`End One Of` menu end

`(VarOffset/VarName): 0x7BC` The latter value (0x7BC) is the uefi address value.

`One Of Option: PEG, Value (8 bit): 0x1` option `0x1` is option value

`One Of Option: SG, Value (8 bit): 0x4 (default)` default is bios default option

### for example We want to set the computer main display driver with integrated graphics driver

use `setup_var 0x7BC 0`

`setup_var` grub efi shell setting uefi Environment address value

`0x78c` 菜单 `Primary Display` uefi  address value

`0` `One Of Option: IGFX`  uefi address value