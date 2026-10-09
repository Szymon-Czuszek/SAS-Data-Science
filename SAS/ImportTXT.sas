/*============================================================================*/
/* STEP 1: Import salary data from an external text file                     */

DATA salary;
INFILE '/home/u63805106/datasetslearnsas/salary (2).txt';
INPUT year salary;
RUN;