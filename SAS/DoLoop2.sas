/*============================================================================*/
/* STEP 1: Create the source dataset                                          */
/*============================================================================*/

/*
   Dataset A contains the number of years for
   each observation.

   The values will be used to demonstrate
   conditional processing with IF-THEN-ELSE.
*/

DATA A;

    /* Read the number of years */
    INPUT years;

    /* Inline data values */
    DATALINES;
4
3
6
3
9
;
RUN;

/*============================================================================*/
/* STEP 2: Apply conditional logic                                             */
/*============================================================================*/

/*
   Create dataset B from dataset A.

      If YEARS is greater than 5:
       - Calculate the equivalent number of months.
       - Write the values to the SAS log.

   Otherwise:
       - Calculate how many years remain
         until reaching 5 years.
*/

DATA B;

    /* Read observations from dataset A */
    SET A;

    /* Check whether the number of years exceeds 5 */
    IF years > 5 THEN
        DO;

            /* Convert years into months */
            months = years * 12;

            /* Display YEARS and MONTHS in the SAS log */
            PUT years= months=;

        END;

    /* If YEARS is 5 or less, calculate years remaining */
    ELSE
        yrsleft = 5 - years;

	RUN;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:
	- Create a dataset using INPUT and DATALINES
	- Read an existing dataset using SET
	- Use IF-THEN-ELSE conditional logic
	- Group multiple statements using DO/END
	- Perform calculations
	- Write values to the SAS log using PUT

   Source Dataset
   ----------------------------------------------------------------

   Dataset A:

   years
   -----
   4
   3
   6
   3
   9
*/