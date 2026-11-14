/*============================================================================*/
/* STEP 1: Create a dataset for London police outcome data                   */
/*============================================================================*/

DATA policel;

    /*
        Read data from the CSV file.
                DSD      - Handles comma-separated values and consecutive delimiters.
                MISSOVER - Prevents SAS from reading values from the next line when data is missing at the end of the current record.
                FIRSTOBS - Starts reading from row 2, skipping the header row.    
    */

    INFILE "/home/u63805106/datasetslearnsas/londonoutcomes.csv"
        DSD
        MISSOVER
        FIRSTOBS=2;
/*-----------------------------------------------------------------------*/
/* STEP 2: Define variable types and maximum character lengths          */
/*-----------------------------------------------------------------------*/

/*
Character variables are assigned a maximum length of 25 characters.
Longitude and Latitude are defined as numeric variables with a length of 4 bytes.
*/

    LENGTH
        CrimeID    $25
        ReportedF  $25
        FallsW     $25
        Longitude   4
        Latitude    4
        Location   $25
        LSOAC      $25
        LSOAN      $25
        OutcomeT   $25;
INPUT  CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$ OutcomeT$;
RUN;