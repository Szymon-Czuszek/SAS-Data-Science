FILENAME inputfile '/home/u62422869/The Simplest Guide to SAS/employee_data.xlsx';

PROC IMPORT DATAFILE = inputfile
		DBMS = xlsx
		OUT = employee_data;
		GETNAMES = yes;
RUN;