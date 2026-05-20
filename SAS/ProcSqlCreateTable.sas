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
