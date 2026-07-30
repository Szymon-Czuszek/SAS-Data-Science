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

    /* Iterate from 1 to 15 in increments of 0.5 */
    DO i = 1 TO 15 BY 0.5 WHILE (y < 15);

        /* Calculate y based on the current value of i */
        y = i * 2;

        /* Write the current observation to the dataset */
        OUTPUT;

    END;

RUN;

DATA A;
DO i = 1 TO 15 BY 0.5 WHILE (y < 15);
y = i*2;
OUTPUT;
END;
RUN;

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:

   - Generate observations with a DO loop
   - Specify custom increment values
   - Use a WHILE condition
   - Create observations dynamically
   - Control loop execution


   DO Loop Syntax
   ----------------------------------------------------------------

   General form:

   DO variable = start TO end BY increment WHILE(condition);

       statements;

   END;

   Components:

   start
       Initial value

   end
       Maximum value

   BY
       Increment after each iteration

   WHILE
       Condition that must remain true

   Loop Parameters
   ----------------------------------------------------------------

   Starting value:

       i = 1

   Ending value:

       i = 15

   Increment:

       0.5

   Therefore the values of i are:

   1.0
   1.5
   2.0
   2.5
   ...

   until the loop terminates.

   WHILE Condition
   ----------------------------------------------------------------

   WHILE (y < 15);

   The condition is evaluated before each
   iteration begins.

   As long as y remains less than 15,
   the loop continues.

   Once y becomes 15 or greater,
   processing stops.

   Variable Calculation
   ----------------------------------------------------------------

   y = i * 2;