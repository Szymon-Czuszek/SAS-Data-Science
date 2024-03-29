/*PROC MEANS DATA=SASHELP.CLASS;
VAR AGE;
RUN;
PROC PRINT DATA=SASHELP.CARS;
VAR MSRP;
RUN;
*/
%MACRO myreport(lib,dsn,statvar);
PROC MEANS DATA=&lib..&dsn;
VAR &statvar;
RUN;
PROC PRINT DATA=&lib..&dsn;
RUN;
%MEND;

%MYREPORT(SASHELP,CLASS,AGE);
%MYREPORT(SASHELP,CARS,MSRP);