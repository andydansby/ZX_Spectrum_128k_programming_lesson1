// using sccz80 1.99c

//assembly files are in ramMain.asm as indicated by ramMain.lst
//#pragma output CRT_ORG_CODE = 32768

//UNCONTENDED RAM
#pragma include:zpragma.inc

#include <arch/zx.h>
#include <stdio.h>//standard input output
#include <input.h>
#include <stdlib.h>//standard library

//#include <intrinsic.h>//temp to place labels
//powerful troubleshooting tool


#include "variables.h"
#include "uncontended.h"
#include "externs.h"

void uncontended(void)
{
    doSomething();
    printf ("Main ()\n");
    printf ("hello uncontended RAM\n");

	anna = multiply2numbers (eve,bob);
	printf ("Multiply 2 numbers 11*11 = %d\n", anna);
}

//this main is not needed except for testing
//normally in separate compiles, we are just
//placing routines or data
void main ()
{
    zx_cls(PAPER_WHITE | INK_BLUE);
    uncontended();

    return (0);
}


//must have blank line at end
