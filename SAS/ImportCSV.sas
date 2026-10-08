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

        /*
            MISSOVER prevents SAS from moving to the next input line
            when the current line does not contain enough values
            for all variables defined in the INPUT statement.

            Missing values at the end of a record are therefore
            assigned as missing instead of causing SAS to read
            additional data from the next line.
        */
        MISSOVER

        /*
            FIRSTOBS=2 tells SAS to start reading from the second
            line of the file.

            This is useful when the first line contains column names
            (a header), for example:

                id,source,type,weightg
                1,feed,A,25
                2,feed,B,30

            The header is skipped and the actual data starts
            from line 2.
        */
        FIRSTOBS=2;


    /*------------------------------------------------------------------------*/
    /* STEP 2: Define the variables to be read                               */
    /*------------------------------------------------------------------------*/

    /*
        INPUT reads the values from each line of the CSV file.

        ID:
            Numeric identifier.

        SOURCE:
            Character variable. The '$' indicates character data.

        TYPE:
            Character variable.

        WEIGHTG:
            Numeric variable containing the weight gain.
    */
    INPUT id source$ type$ weightg;

RUN;