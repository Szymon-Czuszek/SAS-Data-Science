/*============================================================================*/
/* STEP 1: Create dataset and monitor input errors                            */
/*============================================================================*/

/*
   This example demonstrates how SAS handles
   invalid data during input processing and
   how the automatic variable _ERROR_ can be
   used to identify problematic records.
*/

DATA test;

    /* Read numeric values from input data */
    INPUT
        x
        y;

    /* Check whether an input error occurred */
    IF _ERROR_ = 1 THEN

        /* Write a custom message to the SAS log */
        PUT "** Error in row " _N_ " **";

    /* Inline data values */
    DATALINES;
1 1
2 3
3 n
4 4
;
RUN;


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates:

   - Reading raw data
   - Detecting invalid input values
   - Using automatic SAS variables
   - Logging custom error messages
   */

      INPUT Statement
   ----------------------------------------------------------------
   The INPUT statement reads raw data values
   into SAS variables.

      Variables:

   x
       Numeric variable

   y
       Numeric variable

   Automatic Variable: _ERROR_
   ----------------------------------------------------------------
   _ERROR_ is an automatic SAS variable that:

   - is created automatically
   - is not stored in the dataset
   - indicates whether an error occurred
     during execution

        Values:

   _ERROR_ = 0
       No error occurred

   _ERROR_ = 1
       An error occurred

   Automatic Variable: _N_
   ----------------------------------------------------------------
   _N_ is another automatic SAS variable.

   It represents:

   - the current iteration number
   - the observation currently being processed

      Example:

   First record  -> _N_ = 1
   Second record -> _N_ = 2
   Third record  -> _N_ = 3

      Error Detection Logic
   ----------------------------------------------------------------

   IF _ERROR_ = 1 THEN
       PUT "** Error in row " _N_ " **";

   Meaning:

   - If SAS encounters an input error,
     write a custom message to the log.

        Problematic Observation
   ----------------------------------------------------------------

   Input data:

   x   y
   -------
   1   1
   2   3
   3   n
   4   4

      The third record contains:

   y = n

   Since variable Y is numeric,
   SAS cannot convert the character value
   "n" into a numeric value.

      Resulting Error
   ----------------------------------------------------------------

   During processing of row 3:

   - SAS sets _ERROR_ = 1
   - SAS writes a standard error message
   - The custom PUT statement executes

      Example log output:

   ** Error in row 3 **

      How SAS Stores the Invalid Value
   ----------------------------------------------------------------

   When SAS cannot convert a value to numeric:

   - The variable receives a missing value (.)
   - Processing continues unless explicitly stopped


   Resulting dataset:

   x   y
   -------
   1   1
   2   3
   3   .
   4   4

      PUT Statement
   ----------------------------------------------------------------

   PUT writes information directly
   to the SAS log.

      Common uses:

   - Debugging
   - Error tracking
   - Validation checks
   - Monitoring ETL processes

      Practical Applications
   ----------------------------------------------------------------

   Error monitoring is frequently used for:

   - Data quality validation
   - ETL pipelines
   - Importing CSV files
   - Survey processing
   - Financial data loading
   - Audit logging
   - Exception reporting