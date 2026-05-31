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

   GROUP BY
   ----------------------------------------------------------------
   GROUP BY combines rows with identical values.

   In this example:
   ------------------------------------------------
   rows are grouped by:
   - empid
   - fname
   - salary

   COUNT(*)
   ----------------------------------------------------------------
   Counts the number of rows
   within each group.

   Example:
   ------------------------------------------------
   duplicate rows return:
   COUNT = 2

   HAVING Clause
   ----------------------------------------------------------------
   HAVING filters grouped results.

   Unlike WHERE:
   ------------------------------------------------
   HAVING works AFTER aggregation.

   Logic Used
   ----------------------------------------------------------------
   HAVING COUNT(*) > 1

   Meaning:
   ------------------------------------------------
   show only groups that appear more than once.

   DISTINCT Keyword
   ----------------------------------------------------------------
   DISTINCT removes duplicate observations
   from query results.

   Result:
   ------------------------------------------------
   only unique rows are displayed.

   Expected Duplicate Output
   ----------------------------------------------------------------

   empid    fname    salary    COUNT
   --------------------------------------
   000129   Mary      65000      2

   Practical Applications
   ----------------------------------------------------------------
   - Data cleansing
   - ETL validation
   - Detecting duplicate customers
   - Employee record audits
   - Database quality control
   - Data warehouse preprocessing
   - Transaction verification

   Difference Between GROUP BY and DISTINCT
   ----------------------------------------------------------------

   GROUP BY:
   ------------------------------------------------
   - groups observations
   - supports aggregation functions
   - useful for analysis

   DISTINCT:
   ------------------------------------------------
   - removes duplicates directly
   - simpler for deduplication

   Why Duplicate Detection Matters
   ----------------------------------------------------------------
   Duplicate records can:
   - distort analytics
   - inflate totals
   - bias machine learning models
   - reduce data quality
   - create reporting inconsistencies

   PROC SQL Advantages
   ----------------------------------------------------------------
   PROC SQL enables:
   - efficient duplicate detection
   - aggregation
   - filtering
   - relational operations
   - concise query syntax

*/