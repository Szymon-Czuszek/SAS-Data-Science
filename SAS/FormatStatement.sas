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