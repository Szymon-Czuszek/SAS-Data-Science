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
INPUT year salary;
RUN;