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

/*============================================================================*/
/* STEP 2: Display the original dataset                                      */
/*============================================================================*/

PROC PRINT DATA=disease;
RUN;

/*============================================================================*/
/* STEP 3: Create a user-defined character format                            */
/*============================================================================*/

PROC FORMAT;

    /*
        VALUE $codetwo defines a user-created character format.

        The '$' indicates that the format is intended for character values.

        Each diagnosis code is mapped to a descriptive disease/injury name.
    */