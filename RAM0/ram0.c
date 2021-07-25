// using sccz80 1.99c

//assembly files are in ramMain.asm as indicated by ramMain.lst
//#pragma output CRT_ORG_CODE = 49152

//RAM 0 bankable
#pragma include:zpragma.inc

#include <arch/zx.h>
#include <stdio.h>//standard input output
#include <input.h>
#include <stdlib.h>//standard library

//#include <intrinsic.h>//temp to place labels
//powerful troubleshooting tool


unsigned int susan = 0;

#include "ram0.h"


void RAM0(void)
{
    printf ("hello RAM 0\n");

	susan = subtract2numbers (20,5);
	printf ("Subtract 2 numbers 20-5 = %d\n", susan);
}

//this main is not needed except for testing
//normally in separate compiles, we are just
//placing routines or data
void main (void)
{
    zx_cls(PAPER_WHITE | INK_BLUE);
    RAM0();
    return (0);
}


//must have blank line at end
