FILENAME carseu'/home/u62422869/The Simplest Guide to SAS/carseu.xlsx';

PROC IMPORT DATAFILE = carseu
		DBMS = xlsx
		OUT = cars_eu REPLACE;
		GETNAMES = yes;
RUN;

DATA cars_eu;
	SET cars_eu;
	FORMAT MSRP dollar8.;
RUN;

FILENAME carsasia '/home/u62422869/The Simplest Guide to SAS/carsasiapipedelimited.txt';

PROC IMPORT DATAFILE = carsasia
		DBMS = DLM
		OUT = cars_asia REPLACE;
		GETNAMES = no;
		DELIMITER = '|';
RUN;

DATA cars_asia;
	SET cars_asia;
	FORMAT VAR5 dollar8.;
	RENAME VAR1 = Make VAR2 = Model VAR3 = Type VAR4 = Origin VAR5 = MSRP;
RUN;

PROC PRINT DATA = cars_eu;
	WHERE MSRP > 150000;
RUN;

PROC PRINT DATA = cars_asia;
	WHERE MSRP > 150000;
RUN;