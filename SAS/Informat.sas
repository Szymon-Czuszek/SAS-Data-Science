/*============================================================================*/
/* STEP 1: Create a dataset for London police outcome data                   */
/*============================================================================*/

DATA policel;

    /*
        Read data from the CSV file.
                DSD      - Handles comma-separated values and consecutive delimiters.
                MISSOVER - Prevents SAS from reading values from the next line when data is missing at the end of the current record.
        
        
    */
INFILE "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER FIRSTOBS = 2;
LENGTH CrimeID $25 ReportedF $25 FallsW $25 Longitude 4 Latitude 4 Location $25 LSOAC $25 LSOAN $25 OutcomeT $25;
INPUT  CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$ OutcomeT$;
RUN;