/*============================================================================*/
/* STEP 1: Create dataset with SAS date values                                */
/*============================================================================*/

/*
   This example demonstrates how SAS stores
   and performs calculations using date values.

   SAS dates are stored internally as the number
   of days since 01JAN1960, which is the SAS
   reference (epoch) date.
*/

DATA test;

    /* Assign SAS date literals */
    a = "1Jan1960"d;
    b = "31Dec1960"d;
    c = "29Dec2018"d;
    d = "10Apr2018"d;

    /* Calculate the number of days between two dates */
    diff = c - d;

RUN;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------

   This example demonstrates how to:

   - Create SAS date variables
   - Use date literals
   - Perform date arithmetic
   - Calculate the difference between dates