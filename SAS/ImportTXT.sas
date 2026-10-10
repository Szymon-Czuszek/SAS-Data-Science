/*============================================================================*/
/* STEP 1: Import salary data from an external text file                     */
/*============================================================================*/

DATA salary;

    /*
        INFILE specifies the location of the external text file
        containing the salary data.

        SAS reads the observations directly from this file.
    */
    INFILE '/home/u63805106/datasetslearnsas/salary (2).txt';
/*------------------------------------------------------------------------*/
/* STEP 2: Define the input variables                                     */
/*------------------------------------------------------------------------*/
    /*
        INPUT reads the values from each line of the text file.

        YEAR:
            Numeric variable representing the year.

        SALARY:
            Numeric variable representing the salary.

        Since neither variable has a '$' suffix, SAS treats
        both variables as numeric by default.
    */
    
INPUT year salary;
RUN;