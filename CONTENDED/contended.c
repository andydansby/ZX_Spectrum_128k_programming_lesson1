// using sccz80 1.99c

//assembly files are in ramlow.asm as indicated by ramlow.lst
//#pragma output CRT_ORG_CODE = 24000

//CONTENDED RAM
#pragma include:zpragma.inc

#include <arch/zx.h>
#include <stdio.h>//standard input output
#include <input.h>
#include <stdlib.h>//standard library

//#include <intrinsic.h>//temp to place labels
//powerful troubleshooting tool


#include "variables.h"
#include "externs.h"
#include "routines.h"

void main(void)
{
	doSomething();
	printf ("Main ()\n");
	printf ("hello contended RAM\n");

	tom = 2;
	dick = 2;

	harry = add_two_numbers (tom, dick);

	printf ("Add 2 numbers 2+2 = %d\n", harry);

	return (0);
}

//IMPORTANT need to have blank line at very end

