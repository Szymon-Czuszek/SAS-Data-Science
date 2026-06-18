/*============================================================================*/
/* STEP 1: Create dataset and monitor input errors                            */
/*============================================================================*/

/*
   This example demonstrates how SAS handles
   invalid data during input processing and
   how the automatic variable _ERROR_ can be
   used to identify problematic records.
*/

DATA test;

    /* Read numeric values from input data */
    INPUT
        x
        y;

    /* Check whether an input error occurred */
    IF _ERROR_ = 1 THEN

        /* Write a custom message to the SAS log */
        PUT "** Error in row " _N_ " **";

    /* Inline data values */
    DATALINES;
1 1
2 3
3 n
4 4
;
RUN;


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/