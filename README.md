# efi_shell_flash_bios
use efi shell to flash bios

## 使用uefi shell + fpt 强刷BIOS

准备一个U盘

分区格式格式为GPT模式

把本目录的文件复制到 EFI 分区

## bios -> boot设置为 uefi boot
开机选择此U盘 即可进入 UEFI SHELL


## 根据你的需要选择合适的版本

a32.efi afu最新32位的EFI版本

a32.4.efi afu32位的EFI版本(v4)

a64.efi afu最新64位的EFI版本

a64.4.efi afu64位的EFI版本(v4)

fpt.efi fpt最新32位的EFI版本

fpt64.efi fpt最新64位的EFI版本


## fpt 强刷(解锁了菜单的版本必须使用FPT才能输入)

` fpt -f bios.rom -bios`

基于dsanke的bios

解锁全部菜单

logo更换为技嘉auros

必须使用FPT刷入

# grub efi shell for setup_var

EFI/BOOT 目录有 grub efi shell文件

可以使用grub efi shell 设置bios隐藏选项

## 准备工具
下载 [uefitool](https://github.com/LongSoft/UEFITool/releases)

下载 [Universal-IFR-Extractor](https://github.com/LongSoft/Universal-IFR-Extractor/releases)
## 使用 [uefitool](https://github.com/LongSoft/UEFITool/releases) 提取 Setup 菜单
查找 bios lock
![PbGxVx.png](https://s1.ax1x.com/2018/08/26/PbGxVx.png)


![PbJSIK.png](https://s1.ax1x.com/2018/08/26/PbJSIK.png)

提取

![PbJ9PO.png](https://s1.ax1x.com/2018/08/26/PbJ9PO.png)

## 使用 [Universal-IFR-Extractor](https://github.com/LongSoft/Universal-IFR-Extractor/releases) 把setup菜单 转换成 文本
在 Mac 下操作
![PbJCGD.png](https://s1.ax1x.com/2018/08/26/PbJCGD.png)

## 在 提取出来的文本中 寻找 设置地址

![PbYeX9.png](https://s1.ax1x.com/2018/08/26/PbYeX9.png)



菜单说明

![5D682u.png](https://s1.ax2x.com/2018/08/26/5D682u.png)

`one of` 菜单选项

`End One Of` 菜单结束

`(VarOffset/VarName):`后面的值 就是 uefi地址值

`One Of Option: PEG, Value (8 bit): 0x1` 选项 `0x1` 表示 选项值

`One Of Option: SG, Value (8 bit): 0x4 (default)` default表示 bios默认的选项

### 假如 我们要设置电脑主显示驱动用集显驱动

使用 `setup_var 0x7BC 0`

`setup_var` grub efi shell 设置 uefi环境地址值

`0x78c` 菜单 `Primary Display`的uefi 地址值

`0` `One Of Option: IGFX` 的 uefi 地址值