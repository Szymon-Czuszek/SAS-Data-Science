/*============================================================================*/
/* STEP 1: Create dataset and monitor input errors                            */
/*============================================================================*/

/*
   This example demonstrates how SAS handles
   invalid data during input processing and
   how the automatic variable _ERROR_ can be
   used to identify problematic records.
*/

DATA test;
INPUT x y;
IF _error_ = 1 THEN
PUT "** Error in row " _n_ " **";
DATALINES;
1 1
2 3
3 n
4 4
;
RUN;