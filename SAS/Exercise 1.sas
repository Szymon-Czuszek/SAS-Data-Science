/*============================================================================*/
/* STEP 1: Define a macro for importing Excel worksheets                     */
/*============================================================================*/

/*
   The IMPORT_EXCEL macro imports a selected worksheet from
   Balance_Bank.xlsx into a SAS dataset.

   The worksheet number is passed as a macro parameter.
*/

%MACRO import_excel(sheet_number=);

    /* Import the selected Excel worksheet */
    PROC IMPORT
        OUT=Bank&sheet_number
        DATAFILE="/home/u63805106/datasetslearnsas/Balance_Bank.xlsx"
        DBMS=XLSX
        REPLACE;

        /* Dynamically select the worksheet */
        SHEET="Sheet&sheet_number";

        /* Use the first row as variable names */
        GETNAMES=YES;

    RUN;


    /* Sort the imported data for subsequent BY-group processing */
    PROC SORT DATA=Bank&sheet_number;

        BY Acc_number Date;

    RUN;

%MEND import_excel;

/*============================================================================*/
/* STEP 2: Import both worksheets                                             */
/*============================================================================*/

/*
   Call the macro twice to import Sheet1 and Sheet2.

   The resulting datasets are:

       BANK1
       BANK2
*/

%import_excel(sheet_number=1);
%import_excel(sheet_number=2);

/*============================================================================*/
/* STEP 3: Merge the bank transaction datasets                                */
/*============================================================================*/

/*
   Combine BANK1 and BANK2 and calculate the running account balance.

   The balance is calculated separately for each account.
*/

DATA BankMerged;

    /* Merge both datasets using account number */
    MERGE Bank1 Bank2;

    /* Group observations by account number */
    BY Acc_number;

    /*
       RETAIN keeps the value of BALANCE from one observation
       to the next instead of resetting it to missing at the
       beginning of each DATA step iteration.
    */
    RETAIN Balance;


    /* Initialize the balance for the first transaction */
    IF FIRST.Acc_number THEN
        Balance = Credit - Debit;

    /* Update the balance for subsequent transactions */
    ELSE
        Balance = Balance + Credit - Debit;

RUN;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This program demonstrates:

   - Creating and using a SAS macro
   - Importing multiple Excel worksheets
   - Dynamically generating dataset names
   - Sorting data before BY-group processing
   - Merging datasets
   - Using FIRST. variables
   - Using RETAIN to create a running balance

   IMPORT_EXCEL Macro
   ----------------------------------------------------------------

   The macro parameter:

       sheet_number=

   determines which Excel worksheet is imported.

   For example:

       %import_excel(sheet_number=1);

   becomes approximately:

       OUT=Bank1
       SHEET="Sheet1"


   While:

       %import_excel(sheet_number=2);

   creates:

       OUT=Bank2
       SHEET="Sheet2"

   PROC IMPORT
   ----------------------------------------------------------------

   PROC IMPORT reads the Excel workbook and converts
   the selected worksheet into a SAS dataset.

   DBMS=XLSX

   tells SAS that the source file is an Excel
   XLSX workbook.

   GETNAMES=YES

   tells SAS to use the first row of the worksheet
   as variable names.

   PROC SORT
   ----------------------------------------------------------------

   The imported datasets are sorted by:

       Acc_number Date

   Sorting is important because the subsequent DATA
   step uses BY-group processing.

   It also ensures that transactions within each
   account are processed chronologically.

   MERGE Statement
   ----------------------------------------------------------------

   The MERGE statement combines BANK1 and BANK2.

   BY Acc_number;

   tells SAS to combine observations according
   to their account number.

    FIRST.Acc_number
   ----------------------------------------------------------------  

      FIRST.Acc_number is an automatic BY-group variable.

       It equals 1 for the first observation of each account and allows the program to identify when a new account begins.

   Example:

       Acc_number
       ----------
       12346   <- FIRST.Acc_number = 1
       12346
       12346
       12347   <- FIRST.Acc_number = 1
       12347

   RETAIN Statement
   ----------------------------------------------------------------

   RETAIN Balance;

   prevents BALANCE from being reset to missing at the beginning of every DATA step iteration.
   
   This allows BALANCE to carry its value from one transaction to the next.

   Balance Calculation
   ----------------------------------------------------------------

   For the first transaction of an account:

       Balance = Credit - Debit;

   For every subsequent transaction:

       Balance = Balance + Credit - Debit;

   This creates a running account balance.
