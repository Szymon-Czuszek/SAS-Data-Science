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

%mend import_excel;

%import_excel(sheet_number=1);
%import_excel(sheet_number=2);

/* What is the balance for Acc_number 12346 for 03/01/2018? The answer is: -15 */
DATA BankMerged;
	MERGE Bank1 Bank2;
	BY Acc_number;
	RETAIN Balance;

	IF first.Acc_number THEN
		Balance=Credit - Debit;
	ELSE
		Balance=Balance + Credit - Debit;
RUN;