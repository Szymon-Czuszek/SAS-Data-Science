/*============================================================================*/
/* STEP 1: Import Excel data into SAS                                        */
/*============================================================================*/
PROC IMPORT
    OUT = salesdata
    DATAFILE = "/home/u63805106/datasetslearnsas/Sample-Sales-Data (3).xlsx"
    DBMS = XLSX
    REPLACE;
	SHEET="Sheet1";
	GETNAMES=NO;
RUN;