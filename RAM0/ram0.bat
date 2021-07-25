SET PATH=c:\z88dk199c;c:\z88dk199c\bin;c:\z88dk199c\lib\;c:\z88dk199c\lib\clibs;c:\z88dk199c\lib\config

cd codemaps
	del objects.o
cd ..

rem this creates an object file
zcc +zx -vn -SO3 -c -clib=new -o objects.o -startup=30 --fsigned-char @RAM0.lst

rem compile to a TAP file
zcc +zx -vn -SO3 -m -lm -clib=new @RAM0.lst -pragma-include:zpragma.inc -startup=30 -create-app -o ram0


copy "objects.o" "ram0.o"
move "ram0.o" "..\"
move "objects.o" "codemaps\"
move "ram0.map" "codemaps\"


@REM Cleanup
del zcc_opt.def
del ram0_CODE.bin
del ram0_UNASSIGNED.bin

REM a nice map view
cd codemaps
	echo on
	@REM all these objects match up
	z80nm objects.o
	z80nm objects.o > ram0.txt
	copy "ram0.txt" "..\"
	echo off
cd ..


@call beep.bat

