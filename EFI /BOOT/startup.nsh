@echo -off
;foundflash section is simply to locate the correct drive
cls
if exist fs0:\EFI\BOOT\flash.nsh then
fs0:
cd \Efi\boot
echo Found EFI Update Script on fs0:
goto FOUNDFLASH
endif
if exist fs1:\EFI\BOOT\flash.nsh then
fs1:
cd \Efi\boot
echo Found EFI Update Script on fs1:
goto FOUNDFLASH
endif
if exist fs2:\EFI\BOOT\flash.nsh then
fs2:
cd \Efi\boot
echo Found EFI Update Script on fs2:
goto FOUNDFLASH
endif
if exist fs3:\EFI\BOOT\flash.nsh then
fs3:
cd \Efi\boot
echo Found EFI Update Script on fs3:
goto FOUNDFLASH
endif
if exist fs4:\EFI\BOOT\flash.nsh then
fs4:
cd \Efi\boot
echo Found EFI Update Script on fs4:
goto FOUNDFLASH
endif
if exist fs5:\EFI\BOOT\flash.nsh then
fs5:
cd \Efi\boot
echo Found EFI Update Script on fs5:
goto FOUNDFLASH
endif
if exist fs6:\EFI\BOOT\flash.nsh then
fs6:
cd \Efi\boot
echo Found EFI Update Script on fs6:
goto FOUNDFLASH
endif
if exist fs7:\EFI\BOOT\flash.nsh then
fs7:
cd \Efi\boot
echo Found EFI Update Script on fs7:
goto FOUNDFLASH
endif
if exist fs8:\EFI\BOOT\flash.nsh then
fs8:
cd \Efi\boot
echo Found EFI Update Script on fs8:
goto FOUNDFLASH
endif
if exist fs9:\EFI\BOOT\flash.nsh then
fs9:
cd \Efi\boot
echo Found EFI Update Script on fs9:
goto FOUNDFLASH
endif

echo "Unable to find EFI Update script"
echo "Please mount the drive with the update script".
echo ""
goto END

:FOUNDFLASH
echo =======================================================================
echo "This utility will allow you to update the EFI firmware."
echo ""
echo ""
echo ==----------Update-Script-Details-------------==
type flash.nsh
echo ==--------------------------------------------==
echo ""
echo ""
echo "If you don't want to update, press 'q', else press any key to update!"
echo =======================================================================
pause
echo ""
echo ""
echo Starting EFI Firmware update...
echo ""
flash.nsh
echo ""
echo ""
:END