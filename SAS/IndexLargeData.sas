/*============================================================================*/
/* STEP 1: Generate a large dataset                                          */
/*============================================================================*/

DATA LARGEDATA;

    /* Initialize Y before entering the loop */
    Y = 1;

    /*
        Generate 800,000 observations.

        I ranges from 1 to 800,000, increasing by 1 each iteration.
    */
    DO I = 1 TO 800000;
        /* Calculate X using the current iteration number */
        X = I + 1;

        /* Update the cumulative value of Y */
        Y = Y + X;

        /* Calculate Z using the updated value of Y */
        Z = Y + 4;

		IF MOD(I, 4)=1 THEN
			TXT='M';

		IF MOD(I, 4)=2 THEN
			TXT='N';

		IF MOD(I, 4)=3 THEN
			TXT='O';

		IF MOD(I, 4)=0 THEN
			TXT='P';
		OUTPUT;

/*--------------------------------------------------------------------*/
/* STEP 1A: Assign a repeating character value to TXT                 */
/*--------------------------------------------------------------------*/

        /*
            MOD(I, 4) returns the remainder after dividing I by 4.
	END;
RUN;

PROC SQL;
	CREATE TABLE NOINDEX AS SELECT * FROM LARGEDATA WHERE X IN (792286, 486273, 
		237838);
quit;

PROC DATASETS LIBRARY=WORK;
	MODIFY LARGEDATA;
	INDEX CREATE X;
QUIT;

PROC SQL;
	CREATE TABLE INDEX AS SELECT * FROM LARGEDATA WHERE X IN (792286, 486273, 
		237838);
QUIT;