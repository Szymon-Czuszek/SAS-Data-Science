/*============================================================================*/
/* STEP 1: Create the EMPLOYEE_SALARY dataset                                */
/*============================================================================*/

DATA EMPLOYEE_SALARY;

    /*
        Define the variables that will be read from the input data.

        WORKER:
            Character variable containing the employee's name.
            The '$' specifies that WORKER is a character variable.

        PAY:
            Numeric variable containing the employee's salary.

        WORKER_ID:
            Numeric variable containing the employee's ID number.
    */
    INPUT WORKER $ PAY WORKER_ID;

        /*
        Apply display formats to the numeric variables.

        PAY:
            DOLLAR10.2 displays the salary using a dollar sign,
            commas where appropriate, and 2 decimal places.

            Example:
                62000 -> $62,000.00

            WORKER_ID:
            SSN11. displays the numeric ID in the standard
            Social Security Number format.

            Example:
                145233421 -> 145-23-3421

            IMPORTANT:
            FORMAT changes how the values are DISPLAYED.
            It does not change the underlying numeric values.
    */

        FORMAT
        PAY       DOLLAR10.2
        WORKER_ID SSN11.;

    /*
        CARDS (also known as DATALINES) provides the raw data
        directly inside the SAS program.

        The values are read according to the INPUT statement above.
    */
    CARDS;
    Alice 62000 145233421
Bob 75000 432459291
Eva 59000 912342392
Dan 44000 170343929
;

RUN;

/*============================================================================*/
/* STEP 2: Create a dataset containing formatted text values                 */
/*============================================================================*/

DATA SALARY_DETAILS;

    /*
        Copy all observations and variables from EMPLOYEE_SALARY
        into the new SALARY_DETAILS dataset.

    */
    SET EMPLOYEE_SALARY;

    /*
        Convert the numeric PAY value into a character value
        using the DOLLAR10.2 format.

        Unlike the FORMAT statement, PUT() actually creates
        a character representation of the value.

        Example:
            PAY = 62000
            PAYMENT_TXT = "$62,000.00"
    */

    PAYMENT_TXT = PUT(PAY, DOLLAR10.2);


    /*

            Convert the numeric WORKER_ID value into a character value
        using the SSN11. format.

        Example:
            WORKER_ID = 145233421
            ID_TXT = "145-23-3421"

        ID_TXT is therefore a character variable, while
        WORKER_ID remains numeric.

    */
        ID_TXT = PUT(WORKER_ID, SSN11.);