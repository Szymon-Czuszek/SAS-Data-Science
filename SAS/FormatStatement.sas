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