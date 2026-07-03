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