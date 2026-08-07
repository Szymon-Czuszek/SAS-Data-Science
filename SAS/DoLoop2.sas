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

DATA B;
	SET A;

	IF years > 5 THEN
		DO;
			months=years * 12;
			PUT years=months=;
		END;
	ELSE
		yrsleft=5-years;
RUN;