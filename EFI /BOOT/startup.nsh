@echo -off

if exist fs0:\EFI\BOOT\fparts.txt then
set base "fs0:"
endif
if exist fs1:\EFI\BOOT\fparts.txt then
set base "fs1:"
endif
if exist fs2:\EFI\BOOT\fparts.txt then
set base "fs2:"
endif
if exist fs3:\EFI\BOOT\fparts.txt then
set base "fs3:"
endif
if exist fs4:\EFI\BOOT\fparts.txt then
set base "fs4:"
endif
if exist fs5:\EFI\BOOT\fparts.txt then
set base "fs5:"
endif
if exist fs6:\EFI\BOOT\fparts.txt then
set base "fs6:"
endif
if exist fs7:\EFI\BOOT\fparts.txt then
set base "fs7:"
endif
if exist fs8:\EFI\BOOT\fparts.txt then
set base "fs8:"
endif
if exist fs9:\EFI\BOOT\fparts.txt then
set base "fs9:"
endif
if exist fsa:\EFI\BOOT\fparts.txt then
set base "fsa:"
endif
if exist fsb:\EFI\BOOT\fparts.txt then
set base "fsb:"
endif

%base%
CD EFI
