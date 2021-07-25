SET PATH=c:\z88dk199c;c:\z88dk199c\bin;c:\z88dk199c\lib\;c:\z88dk199c\lib\clibs;c:\z88dk199c\lib\config

cd codemaps
	del objects.o
cd ..

rem this creates an object file
zcc +zx -vn -SO3 -c -clib=new -o objects.o -startup=30 --fsigned-char @ramlow.lst

rem compile to a TAP file
zcc +zx -vn -SO3 -m -lm -clib=new @ramlow.lst -pragma-include:zpragma.inc -startup=30 -create-app -o contended


copy "objects.o" "contended.o"
move "contended.o" "..\"
move "objects.o" "codemaps\"
move "contended.map" "codemaps\"


@REM Cleanup
del zcc_opt.def
del contended_CODE.bin
del contended_UNASSIGNED.bin

REM a nice map view
cd codemaps
	echo on
	@REM all these objects match up
	z80nm objects.o
	z80nm objects.o > contended.txt
	copy "contended.txt" "..\"
	echo off
cd ..


@call beep.bat
