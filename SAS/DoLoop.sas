/*============================================================================*/
/* STEP 1: Generate observations using a DO loop                              */
/*============================================================================*/

/*
   This example demonstrates how to use a DO loop
   with both a BY increment and a WHILE condition
   to generate observations dynamically.

   The loop continues while the specified
   condition remains true.
*/

DATA A;
DO i = 1 TO 15 BY 0.5 WHILE (y < 15);
y = i*2;
OUTPUT;
END;
RUN;