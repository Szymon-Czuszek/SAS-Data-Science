%macro import_excel(sheet_number=);
	PROC IMPORT OUT=Bank&sheet_number
        datafile="/home/u63805106/datasetslearnsas/Balance_Bank.xlsx" 
			dbms=xlsx REPLACE;
		SHEET="Sheet&sheet_number";
		GETNAMES=YES;
	RUN;

	PROC SORT DATA=Bank&sheet_number;
		BY Acc_number Date;
	RUN;

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