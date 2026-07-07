/*============================================================================*/
/* STEP 1: Create student score dataset                                       */
/*============================================================================*/

/*
   Dataset STUDENTSCORES contains:

   - gender identifier
   - student score

   Each observation represents the score
   obtained by one student.
*/

DATA studentscores;

    /* Define input variables */
    INPUT
        gender
        score;

    /* Inline data values */
    CARDS;
1 48
1 45
2 50
2 42
1 41
2 51
1 52
1 43
2 52
;
RUN;


/*============================================================================*/
/* STEP 2: Sort dataset by gender                                             */
/*============================================================================*/

/*
   Sort observations by the GENDER variable.

   Sorting is required before using
   BY-group processing with FIRST. and LAST.
   automatic variables.
*/

PROC SORT DATA=studentscores;

    BY gender;

RUN;


/*============================================================================*/
/* STEP 3: Assign sequential counter within each gender group                 */
/*============================================================================*/

/*
   Create a new dataset with a sequential
   counter for each gender group.

   The counter restarts at 1 whenever
   a new gender group begins.
*/

DATA studentscores1;

    SET studentscores;

    /* Running counter */
    count + 1;

    /* Enable BY-group processing */
    BY gender;

    /* Reset counter for first observation in each group */
    IF FIRST.gender THEN
        count = 1;

RUN;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:

   - Create a SAS dataset
   - Sort observations
   - Use BY-group processing
   - Generate sequential numbering
     within groups

   Dataset Structure
   ----------------------------------------------------------------

   Variables:

   gender
       Student gender identifier

   score
       Student score

   count
       Sequential observation number
       within each gender group

   PROC SORT
   ----------------------------------------------------------------
   Before using BY-group processing,
   the dataset must first be sorted.

   Example:

   PROC SORT DATA=studentscores;
       BY gender;
   RUN;

   Without sorting, SAS generates an error
   because FIRST. and LAST. variables depend
   on ordered observations.

   BY Statement
   ----------------------------------------------------------------

   BY gender;

   This instructs SAS to process observations
   separately for each value of GENDER.

   Automatic Variables
   ----------------------------------------------------------------

   When using BY processing, SAS automatically
   creates two temporary variables:

   FIRST.gender

   LAST.gender

   These variables are not stored
   in the output dataset.

   FIRST.gender
   ----------------------------------------------------------------

   FIRST.gender = 1

   indicates the first observation
   of a gender group.

   Example:

   Gender
   -------
   1
   1
   1
   2   ← FIRST.gender = 1
   2
   2

   Running Counter
   ----------------------------------------------------------------

   count + 1;

   This is a SUM statement.

   Unlike:

   count = count + 1;

   it automatically:

   - retains the variable
   - initializes it to zero
   - ignores missing values

   Resetting the Counter
   ----------------------------------------------------------------

   IF FIRST.gender THEN
       count = 1;

   Whenever a new gender begins,
   numbering restarts from 1.

   Example Output
   ----------------------------------------------------------------

   gender   score   count
   -----------------------
   1        48        1
   1        45        2
   1        41        3
   1        52        4
   1        43        5
   2        50        1
   2        42        2
   2        51        3
   2        52        4

   Why Sort First?
   ----------------------------------------------------------------

   BY-group processing assumes all observations
   belonging to the same group are consecutive.

   PROC SORT guarantees this ordering.

   Practical Applications
   ----------------------------------------------------------------

   Sequential numbering within groups is useful for:

   - Student rankings
   - Customer transactions
   - Employee records
   - Sales reports
   - Financial statements
   - Survey responses
   - Time series grouped by category
   - ETL processing
*/