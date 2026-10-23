/*============================================================================*/
/* STEP 1: Import Excel data into SAS                                        */
/*============================================================================*/
PROC IMPORT
    OUT = salesdata
    DATAFILE = "/home/u63805106/datasetslearnsas/Sample-Sales-Data (3).xlsx"
    DBMS = XLSX
    REPLACE;
    /*
        SHEET specifies which worksheet in the Excel workbook
        should be imported.

        Here, SAS imports data from the worksheet named Sheet1.
    */
    SHEET = "Sheet1";
        GETNAMES=NO tells SAS that the first row contains data
        rather than variable names.

        SAS therefore generates default variable names, such as
        VAR1, VAR2, VAR3, and so on.
    */
    GETNAMES = NO;
RUN;