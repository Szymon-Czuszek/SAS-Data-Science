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

   IF-THEN-ELSE Logic
   ----------------------------------------------------------------

      The main condition is:

       IF years > 5 THEN

   If the condition is TRUE, SAS executes
   everything inside the DO/END block.

   If the condition is FALSE, SAS executes
   the ELSE statement.

   When YEARS > 5
   ----------------------------------------------------------------

   SAS performs two operations:

       months = years * 12;

   and:

       PUT years= months=;

   The first statement converts years
   into months.

   The second statement writes the values
   to the SAS log.

   Example:

   years = 6

   months = 6 * 12

          = 72

   Therefore the log contains something
   similar to:

       years=6 months=72

	   When YEARS <= 5

   ----------------------------------------------------------------

      SAS calculates:

       yrsleft = 5 - years;

   Examples:

       years = 4
       yrsleft = 1

       years = 3
       yrsleft = 2

   Expected Output Dataset
   ----------------------------------------------------------------
*/