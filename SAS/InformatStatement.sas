/*============================================================================*/
/* STEP 1: Create the EMPLOYEE_BONUS dataset                                 */
/*============================================================================*/

/*
    Define a new dataset named EMPLOYEE_BONUS.

    The dataset will contain:
    - EMPLOYEE_NAME  : Employee's name (character)
    - BONUS_AMOUNT  : Employee's bonus (numeric)
    - DATE_OF_BIRTH : Employee's date of birth (numeric SAS date)
*/
DATA EMPLOYEE_BONUS;

    /* Specify the variables to be read from the input data */
    INPUT EMPLOYEE_NAME $ BONUS_AMOUNT DATE_OF_BIRTH;

    /*
        Define how SAS should interpret the raw input values.

        DOLLAR5. - Reads monetary values containing a dollar sign.
        DATE7.   - Reads dates in the DDMMMYY format, e.g. 20APR80.
    */
    INFORMAT BONUS_AMOUNT DOLLAR5.
            DATE_OF_BIRTH DATE7.;

    /* Provide the raw data directly within the SAS program */
    CARDS;
Alice $5500 20Apr80
Bob   $1200 01Mar92
Eva   $6750 24Oct76
Dan   $4560 17Dec87
;

RUN;

/*============================================================================*/
/* STEP 2: Create a duplicate of EMPLOYEE_BONUS                              */
/*============================================================================*/

/*
    Create a new dataset named EMPLOYEE_BONUS1.
        SET reads all observations and variables from the existing
    EMPLOYEE_BONUS dataset.

    This copies the data without having to enter it again.
*/
/* This SAS snippet creates a duplicate dataset named EMPLOYEE_BONUS1 using the DATA statement.
It sets the dataset to read from the existing EMPLOYEE_BONUS dataset.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values. */

DATA EMPLOYEE_BONUS1;
INPUT EMPLOYEE_NAME $ BONUS_AMOUNT DATE_OF_BIRTH ;
INFORMAT BONUS_AMOUNT dollar5. DATE_OF_BIRTH date7.;
CARDS;
Alice $5500 20Apr80 
Bob $1200 01Mar92
Eva $6750 24Oct76
Dan $4560 17Dec87
;
RUN;