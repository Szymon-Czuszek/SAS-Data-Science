/*============================================================================*/
/* STEP 1: Import Excel data into SAS                                        */
PROC IMPORT OUT=salesdata 
		datafile="/home/u63805106/datasetslearnsas/Sample-Sales-Data (3).xlsx" 
		dbms=xlsx REPLACE;
	SHEET="Sheet1";
	GETNAMES=NO;
RUN;