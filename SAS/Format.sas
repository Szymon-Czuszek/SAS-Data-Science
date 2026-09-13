/*============================================================================*/
/* STEP 1: Create a dataset containing disease diagnosis codes                */
/*============================================================================*/

DATA disease;

    /* Read the diagnosis code as a character variable */
    INPUT diagcode$;

    /* Provide the input data directly within the SAS program */
    DATALINES;
001
290
800
;

RUN;