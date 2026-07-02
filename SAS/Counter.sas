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

PROC SORT DATA=studentscores;
	BY gender;
RUN;

DATA studentscores1;
	SET studentscores;
	count + 1;
	BY gender;

	IF first.gender THEN
		count=1;
RUN;