SET PATH=c:\z88dk199c;c:\z88dk199c\bin;c:\z88dk199c\lib\;c:\z88dk199c\lib\clibs;c:\z88dk199c\lib\config

cd codemaps
	del objects.o
cd ..

rem this creates an object file
zcc +zx -vn -SO3 -c -clib=new -o objects.o -startup=30 --fsigned-char @ramMain.lst

rem compile to a TAP file
zcc +zx -vn -SO3 -m -lm -clib=new @ramMain.lst -pragma-include:zpragma.inc -startup=30 -create-app -o uncontended


copy "objects.o" "uncontended.o"
move "uncontended.o" "..\"
move "objects.o" "codemaps\"
move "uncontended.map" "codemaps\"


@REM Cleanup
del zcc_opt.def
del uncontended_CODE.bin
del uncontended_UNASSIGNED.bin

REM a nice map view
cd codemaps
	echo on
	@REM all these objects match up
	z80nm objects.o
	z80nm objects.o > rammain.txt
	copy "rammain.txt" "..\"
	echo off
cd ..


call beep.bat
