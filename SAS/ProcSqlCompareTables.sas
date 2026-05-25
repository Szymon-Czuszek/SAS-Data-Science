/*============================================================================*/
/* STEP 1: Create first employee dataset                                      */
/*============================================================================*/

/*
   Dataset STAFF1 contains:
   - employee IDs
   - employee names
   - salaries
*/

DATA staff1;
INPUT empid$ fname$ salary;
DATALINES;
000123 John 50000
000124 Mary 65000
000125 Lisa 95000
000126 Joseph 43000
;
RUN;

/*============================================================================*/
/* STEP 2: Create second employee dataset                                     */
/*============================================================================*/

/*
   Dataset STAFF2 contains:
   - all employees from STAFF1
   - additional employee records
*/

DATA staff2;
INPUT empid$ fname$ salary;
DATALINES;
000123 John 50000
000124 Mary 65000
000125 Lisa 95000
000126 Joseph 43000
000127 Glenn 32000
000128 Jessica 43000
;
RUN;

/*============================================================================*/
/* STEP 3: Compare datasets using EXCEPT                                      */
/*============================================================================*/

/*
   PROC SQL EXCEPT identifies rows that exist in:
   - STAFF2

   but do NOT exist in:
   - STAFF1
*/

PROC SQL;
SELECT * FROM staff2
EXCEPT
SELECT * FROM staff1;
QUIT;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:
   - compare datasets
   - identify new observations
   - detect differences between tables

   DATA Step
   ----------------------------------------------------------------
   Creates SAS datasets using inline data.

   Variables:
   ------------------------------------------------
   empid   -> Employee ID
   fname   -> Employee First Name
   salary  -> Employee Salary

*/
