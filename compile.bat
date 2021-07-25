SET PATH=c:\z88dk199c;c:\z88dk199c\bin;c:\z88dk199c\lib\;c:\z88dk199c\lib\clibs;c:\z88dk199c\lib\config;C:\Program Files\SDCC\bin

cls

cd CONTENDED
	call ramlow.bat
	move "contended.tap" "..\"
	move "contended.txt" "..\"
cd ..

cd RAM0
	call ram0.bat
	move "ram0.tap" "..\"
	move "ram0.txt" "..\"
cd ..

cd UNCONTENDED
	call rammain.bat
	move "uncontended.tap" "..\"
	move "rammain.txt" "..\"
cd ..

echo on

move "contended.o" "OBJECTS\"
move "ram0.o" "OBJECTS\"
move "uncontended.o" "OBJECTS\"

REM FINISHED COMPILE
call beep.bat
