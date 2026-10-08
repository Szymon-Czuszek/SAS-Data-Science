/*============================================================================*/
/* STEP 1: Import the WEIGHTGAIN CSV file                                    */
/*============================================================================*/

DATA weightgain;

    /*
        INFILE specifies the external file that SAS should read.

        The file is a CSV containing weight-gain data.
    */
    INFILE "/home/u63805106/datasetslearnsas/weightgain (2).csv"
        
        /*
            DSD = Delimiter-Sensitive Data

            This option is commonly used when reading CSV files.

            It tells SAS to:
                - Treat commas as delimiters by default.
                - Handle consecutive delimiters correctly.
                - Recognize values enclosed in quotation marks.
                - Correctly handle missing values between delimiters.

            Example:
                1,source,type,25
                2,source,,30
            The empty value between two commas is treated as missing.
        */
        DSD
		FIRSTOBS=2;
	INPUT id source$ type$ weightg;
RUN;