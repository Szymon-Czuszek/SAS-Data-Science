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

   EXCEPT Operator
   ----------------------------------------------------------------
   The SQL EXCEPT operator returns rows from:
   ------------------------------------------------
   first query

   that do NOT appear in:
   ------------------------------------------------
   second query


   Logic of This Example
   ----------------------------------------------------------------

   STAFF1 contains:
   ------------------------------------------------
   4 employees

   STAFF2 contains:
   ------------------------------------------------
   6 employees

   Therefore:
   ------------------------------------------------
   EXCEPT identifies employees present only in STAFF2.

   Expected Output
   ----------------------------------------------------------------

   empid    fname      salary
   --------------------------------
   000127   Glenn       32000
   000128   Jessica     43000

   Important Note
   ----------------------------------------------------------------
   EXCEPT compares entire rows.

   Two observations are considered identical only if:
   - all column values match.

   Practical Use Cases
   ----------------------------------------------------------------
   - Detecting newly added records
   - Auditing database changes
   - Incremental ETL processing
   - Employee synchronization
   - Data validation
   - Comparing snapshots of datasets
   - Identifying missing records

   EXCEPT vs JOIN
   ----------------------------------------------------------------
   EXCEPT:
   - compares complete rows
   - simpler for difference detection

   JOIN:
   - combines related tables
   - more flexible for detailed analysis

   Why PROC SQL?
   ----------------------------------------------------------------
   PROC SQL allows:
   - relational operations
   - dataset comparison
   - filtering
   - aggregation
   - complex joins

   It provides database-like querying directly in SAS.

*/
