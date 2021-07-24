#ifndef ROUTINES_H
#define ROUTINES_H

//CONTENDED RAM

void doSomething (void)
{
    zx_cls(PAPER_WHITE | INK_RED);
    printf ("hello contended RAM\n");
}

unsigned char add_two_numbers (unsigned char a, unsigned char b)
{
    return a + b;
}

#endif
