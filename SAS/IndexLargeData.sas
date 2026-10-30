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

            Remainder 1 -> M
            Remainder 2 -> N
            Remainder 3 -> O
            Remainder 0 -> P

            This creates the repeating sequence M, N, O, P.
        */

        IF MOD(I, 4) = 1 THEN
            TXT = 'M';
        IF MOD(I, 4) = 2 THEN
            TXT = 'N';
        IF MOD(I, 4) = 3 THEN
            TXT = 'O';
        IF MOD(I, 4) = 0 THEN
            TXT = 'P';
        /*
            Write the current observation to LARGEDATA.

            OUTPUT is inside the loop, so one observation is written
            during each iteration.
        */
        OUTPUT;

    END;

RUN;

/*============================================================================*/
/* STEP 2: Query the dataset before creating an index                        */
/*============================================================================*/

PROC SQL;

    /*
        Select all variables from LARGEDATA for observations
        where X matches one of the three specified values.

        The result is saved in a separate dataset named NOINDEX.
    */
    CREATE TABLE NOINDEX AS
        SELECT *
        FROM LARGEDATA
        WHERE X IN (792286, 486273, 237838);
/*============================================================================*/
QUIT;
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