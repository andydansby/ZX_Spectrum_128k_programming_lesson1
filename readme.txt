This folder contains the start of seperating the
sections of a 128k file

it does not contain the interupt code yet
Concentrate on just pure C, no ASM
nor does it link the sections together


You will find 3 seperate programs

CONTENDED
	starts at 24000
	this resides in contended memory which runs slower
	from 24000 to 32767
	8767 Bytes

	ZX BASIC starts at 23760, but will have problems unless you are above 23999

	#pragma output CRT_ORG_CODE = 24000

	stack is at 49151 and works downwards
-----------------------------------------
UNCONTENDED
	starts at 32768
	this resides in uncontended memory 
	which runs faster
	from 32768 to 49151
	16383 bytes

	#pragma output CRT_ORG_CODE = 32767

	stack is at 49151 and works downwards

-----------------------------------------
RAM 0
	starts at 49152
	this resides in uncontended memory 
	which runs faster
	from 49152 to 65535
	This is in ram bank 0 and could be switched out
	16383 bytes
	
	#pragma output CRT_ORG_CODE = 49152

	stack is at 65535 and works downwards
-----------------------------------------


