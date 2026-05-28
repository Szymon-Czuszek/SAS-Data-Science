/*============================================================================*/
/* STEP 1: Create employee dataset                                            */
/*============================================================================*/

/*
   Dataset EMPLOYEEDATA contains:
   - employee IDs
   - employee names
   - salaries

   The dataset intentionally includes duplicate rows
   to demonstrate duplicate detection and removal.
*/

DATA employeedata;
INPUT empid$ fname$ salary;
DATALINES;
000123 John 50000
000124 Mary 65000
000125 Lisa 95000
000126 Joseph 43000
000127 Glenn 32000
000128 Jessica 43000
000129 Mary 65000
000129 Mary 65000
;
RUN;

/*============================================================================*/
/* STEP 2: Identify duplicate rows                                            */
/*============================================================================*/

/*
   Detect duplicate observations using:
   - GROUP BY
   - COUNT(*)
   - HAVING clause
*/

PROC SQL;
TITLE "Duplicate Rows";
SELECT *, COUNT(*) AS COUNT
FROM employeedata
GROUP BY empid, fname, salary
HAVING COUNT(*) > 1;
QUIT;

/*============================================================================*/
/* STEP 3: Remove duplicate rows                                              */
/*============================================================================*/

/*
   DISTINCT removes duplicate observations
   from the result set.
*/

Proc SQL;
TITLE "No Duplicate Rows";
SELECT DISTINCT *
FROM employeedata;
QUIT;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of This Program
   ----------------------------------------------------------------
   This example demonstrates how to:
   - identify duplicate records
   - count duplicate occurrences
   - remove duplicate rows

   Duplicate Records
   ----------------------------------------------------------------
   A duplicate row occurs when:
   - all column values are identical

   In this dataset:
   ------------------------------------------------
   empid    fname    salary
   --------------------------------
   000129   Mary     65000

   appears twice.

*/