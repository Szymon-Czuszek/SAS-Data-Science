/*============================================================================*/
/* STEP 1: Create employee information dataset                                */
/*============================================================================*/

/*
   This dataset stores:
   - employee IDs
   - employee first names
   - employee heights
*/

DATA info;
INPUT empid$ fname$ height;
DATALINES;
000123 John 175
000124 Mary 155
000125 Lisa 190
000126 Joseph 187
;
RUN;

/*============================================================================*/
/* STEP 2: Create employee weight dataset                                     */
/*============================================================================*/

/*
   This dataset stores:
   - employee IDs
   - employee weights
*/

DATA info2;
INPUT empidd$ weight;
DATALINES;
000123 150
000124 120
000125 180
000126 160
;
RUN;

/*============================================================================*/
/* STEP 3: Merge datasets using PROC SQL                                      */
/*============================================================================*/

/*
   Combine employee personal information
   with employee weight data using SQL JOIN.
*/

PROC SQL;
TITLE "Final Table";
CREATE TABLE final AS
SELECT empid "Employee ID" format$6., fname, height, weight
FROM info AS i FULL JOIN info2 as ii
ON i.empid = ii.empidd;
SELECT * FROM final;
QUIT;

/*============================================================================*/
/* STEP 4: Create empty table structure copy                                  */
/*============================================================================*/

/*
   Create a new empty table with the same structure
   as the FINAL dataset.

   No observations are copied.
*/

PROC SQL;
CREATE TABLE newfinal
LIKE final;
QUIT;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   DATA Step
   ----------------------------------------------------------------
   DATA steps are used to:
   - create datasets
   - load raw data
   - transform observations

 INPUT Statement
   ----------------------------------------------------------------
   Defines variable names and types.

   Example:
   ------------------------------------------------
   empid $
   fname $
   height

   Character variables:
   - empid
   - fname

   Numeric variable:
   - height

DATALINES
   ----------------------------------------------------------------
   Allows manual inline data entry directly
   within the SAS program.

 FULL JOIN
   ----------------------------------------------------------------
   Combines all observations from both tables.

   Behavior:
   ------------------------------------------------
   - matching rows are merged
   - non-matching rows are preserved
   - missing values appear when no match exists

   In this example:
   ------------------------------------------------
   all employees from both tables are retained.

Table Aliases
   ----------------------------------------------------------------
   AS i
   AS ii

   Short aliases improve query readability.

   ON Clause
   ----------------------------------------------------------------
   Defines matching condition:

 ------------------------------------------------
   i.empid = ii.empidd
   ------------------------------------------------

   This links:
   - employee IDs from INFO
   - employee IDs from INFO2

Column Label
   ----------------------------------------------------------------
   empid "Employee ID"

   Changes displayed column name in output.


   FORMAT=$6.
   ----------------------------------------------------------------
   Ensures Employee ID is displayed
   as a 6-character string.

   CREATE TABLE LIKE
   ----------------------------------------------------------------
   Creates an empty table using the structure
   of another dataset.

   Includes:
   - variable names
   - formats
   - labels
   - variable types

   Does NOT copy:
   - observations/data

Example Output
   ----------------------------------------------------------------

   final
   ------------------------------------------------
   Employee ID   fname    height    weight
   ----------------------------------------
   000123        John       175       150
   000124        Mary       155       120
   000125        Lisa       190       180
   000126        Joseph     187       160

Common Use Cases
   ----------------------------------------------------------------
   - Employee management systems
   - HR databases
   - SQL joins in SAS
   - Data integration
   - Table structure replication
   - ETL processes
   - Data warehouse preparation

Why Use PROC SQL?
   ----------------------------------------------------------------
   PROC SQL provides:
   - relational database operations
   - joins
   - aggregation
   - filtering
   - table creation

 Advantages:
   - concise syntax
   - powerful merging capabilities
   - database-like querying
/*