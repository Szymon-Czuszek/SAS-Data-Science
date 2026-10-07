/*============================================================================*/
/* STEP 1: Import the WEIGHTGAIN CSV file                                    */
/*============================================================================*/

DATA weightgain;

    /*
        INFILE specifies the external file that SAS should read.

        The file is a CSV containing weight-gain data.
    */
	INFILE "/home/u63805106/datasetslearnsas/weightgain (2).csv" DSD MISSOVER 
		FIRSTOBS=2;
	INPUT id source$ type$ weightg;
RUN;