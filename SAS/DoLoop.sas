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

   During each iteration,
   y is calculated from the
   current value of i.

   OUTPUT Statement
   ----------------------------------------------------------------

      OUTPUT;

   Writes the current values of i and y
   as one observation in dataset A.

   Without OUTPUT, only the final values
   would be written at the end of the DATA step.

   Loop Execution
   ----------------------------------------------------------------



   Iteration    i      y
   ------------------------
      1        1.0    2.0
      2        1.5    3.0
      3        2.0    4.0
      4        2.5    5.0
      5        3.0    6.0
      6        3.5    7.0
      7        4.0    8.0
      8        4.5    9.0
      9        5.0   10.0
     10        5.5   11.0
     11        6.0   12.0
     12        6.5   13.0
     13        7.0   14.0
     14        7.5   15.0

       At this point:

       y = 15

          The WHILE condition:

       y < 15

       is no longer true, so the loop ends.

   Resulting Dataset
   ----------------------------------------------------------------

      i      y
   -------------
   1.0    2.0
   1.5    3.0
   2.0    4.0
   2.5    5.0
   3.0    6.0
   3.5    7.0
   4.0    8.0
   4.5    9.0
   5.0   10.0
   5.5   11.0
   6.0   12.0
   6.5   13.0
   7.0   14.0
   7.5   15.0

   Important Note
   ----------------------------------------------------------------

   The WHILE condition references Y before
   Y has been assigned a value during the
   first iteration.

   Initially, Y is missing.

   In SAS, a missing numeric value is treated
   as smaller than any numeric value, so the
   condition (y < 15) evaluates as true for
   the first iteration.

   Practical Applications
   ----------------------------------------------------------------

   DO loops are commonly used for:

   - Simulation
   - Generating test data
   - Time-series creation
   - Iterative calculations
   - Monte Carlo methods
   - Financial modeling
   - Data transformation
   - Engineering calculations

   Key SAS Concepts Demonstrated
   ----------------------------------------------------------------

   - DATA step
   - DO loop
   - BY increment
   - WHILE condition
   - OUTPUT statement
   - Automatic observation generation