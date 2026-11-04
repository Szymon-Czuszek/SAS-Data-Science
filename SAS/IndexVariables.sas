/*============================================================================*/
/* STEP 1: Define a permanent SAS library                                    */
/*============================================================================*/

    Create a library reference named SA.

    Datasets saved in this library are stored permanently in the specified
    directory instead of being deleted when the SAS session ends.
*/

LIBNAME sa '/home/u63805106/datasetslearnsas/';

/*============================================================================*/
/* STEP 2: Import the sales data from a CSV file                             */
/*============================================================================*/

DATA sa.sal;

    /*
        Read data from the sales.csv file.
        DSD      - Handles comma-separated values and consecutive delimiters.
        MISSOVER - Prevents SAS from reading the next line when values are missing at the end of a record.
        FIRSTOBS - Starts reading from the second row, skipping the header.
    */
        
    INFILE "/home/u63805106/datasetslearnsas/sales.csv"
        DSD
        MISSOVER
        FIRSTOBS=2;

    /*
        Read the variables from the CSV file.

        X1-X5 and X6-X8 represent groups of numeric variables.
        Variables followed by $ are read as character variables.
    */
    INPUT
        x1-x5
        Status $
        x6-x8
        ProductLine $
        MSRP
        ProductCode $
        CustomerName $;

RUN;
PROC FREQ DATA=sa.sal(KEEP=CustomerName);