/*============================================================================*/
/* STEP 1: Create the INDIVIDUALS dataset                                    */
/*============================================================================*/

/*
    Create a dataset named INDIVIDUALS containing personal information.

    Variables:
    FIRST - First name
    LAST  - Last name
    SEX   - Gender
    AGE   - Age in years
    MASS  - Body mass
*/
DATA individuals;

    /*-----------------------------------------------------------------------*/
    /* STEP 2: Define the input structure                                   */
    /*-----------------------------------------------------------------------*/

    /*
        FIRST :$10. - Read FIRST as a character variable with a length
                      of 10 characters.

        LAST  :$13.  - Read LAST as a character variable with a length
                       of 13 characters.

        SEX $        - Read SEX as a character variable.

        AGE          - Read AGE as a numeric variable.

        MASS         - Read MASS as a numeric variable.

        @@             - Hold the input line and continue reading another
                        observation from the same line if possible.
    */
    INPUT
        FIRST :$10.
        LAST  :$13.
        SEX $
        AGE
        MASS
        @@;

    /*-----------------------------------------------------------------------*/
    /* STEP 3: Provide the inline input data                                  */
    /*-----------------------------------------------------------------------*/

    CARDS;
Alice White F 35 110.2 Michael Brown M 42 155.8
Emily Green F 27 125.4 David Jones M 51 180.6
;

RUN;