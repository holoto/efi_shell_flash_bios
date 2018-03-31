# efi_shell_flash_bios
efi_shell_flash_bios

## 使用uefi shell + fpt 强刷BIOS

准备一个U盘

分区格式格式为GPT模式

把本目录的文件复制到 EFI 分区

开机选择此U盘 即可进入 UEFI SHELL

输入`FS2:` 进入U盘EFI目录

## 根据你的需要选择合适的版本

a32.efi afu最新32位的EFI版本
a32.4.efi afu32位的EFI版本(v4)
a64.efi afu最新64位的EFI版本
a64.4.efi afu64位的EFI版本(v4)

fpt.efi fpt最新32位的EFI版本
fpt64.efi fpt最新64位的EFI版本


# fpt 强刷(解锁了菜单的版本必须使用FPT才能输入)

` fpt -f bios.rom -bios`

8440logo w650dc-8400-unlock-hide-menu.zip
基于dsanke的bios
解锁全部菜单
logo更换为技嘉auros
必须使用FPT刷入