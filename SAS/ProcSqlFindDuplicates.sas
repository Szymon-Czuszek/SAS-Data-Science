/*============================================================================*/
/* STEP 1: Create employee dataset                                            */
/*============================================================================*/

/*
   Dataset EMPLOYEEDATA contains:
   - employee IDs
   - employee names
   - salaries

   The dataset intentionally includes duplicate records
   to demonstrate duplicate detection using PROC SQL.
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
   Group records by all columns and count
   how many times each unique combination appears.

   Only groups with more than one occurrence
   are returned.
*/

PROC SQL;
TITLE "Duplicate Rows";
SELECT *, COUNT(*) AS COUNT
FROM employeedata
GROUP BY empid, fname, salary
HAVING COUNT(*) > 1;
QUIT;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to detect
   duplicate observations within a SAS dataset.


   Dataset Structure
   ----------------------------------------------------------------
   Variables:

   empid
       Employee identifier

   fname
       Employee first name

   salary
       Employee salary

   Duplicate Record
   ----------------------------------------------------------------
   A duplicate record occurs when all selected
   column values are identical.

   In this dataset:

   empid    fname    salary
   --------------------------------
   000129   Mary     65000
   000129   Mary     65000

   appears twice.

   GROUP BY
   ----------------------------------------------------------------
   GROUP BY combines observations that share
   identical values in the specified columns.

   In this example:

   GROUP BY empid, fname, salary

   means records are grouped according to
   the complete employee information.

   COUNT(*)
   ----------------------------------------------------------------
   COUNT(*) calculates the number of rows
   within each group.

   Example:

   Employee Record             Count
   -----------------------------------
   000123 John 50000             1
   000124 Mary 65000             1
   000129 Mary 65000             2

   HAVING Clause
   ----------------------------------------------------------------
   HAVING filters aggregated results.

   Unlike WHERE:
   - WHERE filters rows before grouping
   - HAVING filters groups after aggregation

   Logic used:

   HAVING COUNT(*) > 1

   Meaning:
   return only groups that occur more than once.
 
*/