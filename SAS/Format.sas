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
    VALUE $codetwo
        '001' = "Malaria"
        '290' = "Social Anxiety Disorder"
        '800' = "Leg Injury"
    ;

RUN;

/*============================================================================*/
/* STEP 4: Apply the format when displaying the dataset                      */
/*============================================================================*/

PROC PRINT DATA=disease;

    /*
        Apply the $codetwo format to DIAGCODE for this procedure only.

        The underlying values of DIAGCODE remain:
            001
            290
            800

        PROC PRINT simply displays their formatted descriptions instead.
    */
    FORMAT diagcode $codetwo.;

RUN;

/*============================================================================*/
/* STEP 5: Create a new variable containing the formatted description        */
/*============================================================================*/

DATA diseasereal;

    /* Copy all observations and variables from the DISEASE dataset */
    SET disease;

    /*
        PUT() converts the character diagnosis code using the
        user-defined $codetwo format.

        Unlike the FORMAT statement above, PUT() creates a new
        character variable containing the formatted text.

        Example:
            diagcode = '001'  ->  diagdesc = 'Malaria'
            diagcode = '290'  ->  diagdesc = 'Social Anxiety Disorder'
            diagcode = '800'  ->  diagdesc = 'Leg Injury'

    */
    diagdesc = PUT(diagcode, $codetwo.);

RUN;

/*============================================================================*/
/* STEP 6: Display the final dataset                                         */
/*============================================================================*/