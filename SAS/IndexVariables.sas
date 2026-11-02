/*============================================================================*/
/* STEP 1: Define a permanent SAS library                                    */
/*============================================================================*/

    Create a library reference named SA.

    Datasets saved in this library are stored permanently in the specified
    directory instead of being deleted when the SAS session ends.
*/

LIBNAME sa '/home/u63805106/datasetslearnsas/';

DATA sa.sal;
INFILE "/home/u63805106/datasetslearnsas/sales.csv" DSD MISSOVER FIRSTOBS=2 ;
INPUT x1-x5 Status$ x6-x8 ProductLine$ MSRP ProductCode$ CustomerName$;
RUN;
PROC FREQ DATA=sa.sal(KEEP=CustomerName);