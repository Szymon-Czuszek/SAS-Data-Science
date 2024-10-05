/* Part 1*/
FILENAME carseu'/home/u62422869/The Simplest Guide to SAS/carseu.xlsx';

PROC IMPORT DATAFILE=carseu DBMS=xlsx OUT=cars_eu REPLACE;
	GETNAMES=yes;
RUN;

DATA cars_eu;
	SET cars_eu;
	FORMAT MSRP dollar8.;
RUN;

FILENAME carsasia 
	'/home/u62422869/The Simplest Guide to SAS/carsasiapipedelimited.txt';

DATA cars_asia;
	INFILE carsasia DLM='|' MISSOVER;
	LENGTH Make $ 50 Model $ 50 Type $ 20 Origin $ 20;
	INPUT Make $ Model $ Type $ Origin $ MSRP;
	FORMAT MSRP dollar8.;
RUN;

PROC PRINT DATA=cars_eu;
	WHERE MSRP > 150000;
RUN;

PROC PRINT DATA=cars_asia;
	WHERE MSRP > 150000;
RUN;

/* Part 2 */
LIBNAME MyLib '/home/u62422869/The Simplest Guide to SAS';

DATA cars_usa;
	SET MyLib.carsusa;
RUN;

FILENAME carsmpg'/home/u62422869/The Simplest Guide to SAS/carsmpg.xlsx';

PROC IMPORT DATAFILE=carsmpg DBMS=xlsx OUT=cars_mpg REPLACE;
	GETNAMES=yes;
RUN;

DATA cars_all;
	LENGTH Make $ 50 Model $ 50 Type $ 20 Origin $ 20;
	SET cars_asia cars_eu cars_usa;
RUN;

PROC SORT DATA=cars_all;
	BY Model Make;
RUN;

PROC SORT DATA=cars_mpg;
	BY Model Make;
RUN;

DATA combined_cars_all;
	MERGE cars_all (IN=a) cars_mpg (IN=b);
	BY Model Make;

	IF a;
RUN;

PROC SORT DATA=combined_cars_all;
	BY MSRP;
RUN;

PROC PRINT DATA=combined_cars_all;
	WHERE Type='SUV' AND Origin='Europe';
RUN;

/* Part 3

What percentage of total car models in the world are  cars of the make Mercedes-Benz? */
PROC FREQ DATA=combined_cars_all;
	TABLES make*origin / OUT=CarsFreq NOROW NOCOL NOPERCENT;
RUN;

DATA CarsFreqTable;
	SET CarsFreq;
	value=CAT(count, '(', ROUND(percent, .01), '%)');
	DROP count percent;
RUN;

PROC TRANSPOSE DATA=CarsFreqTable OUT=CarsFreqTable_T;
	BY make;
	ID origin;
	VAR value;
RUN;

TITLE 'Report of Frequency Count and Percentage';

PROC PRINT DATA=CarsFreqTable_T (DROP=_name_);
RUN;

/* Part 3

What is the sum of percentages of hybrid cars in the world?

0.47% + 0.23% = 0.7% */
%MACRO myStat(var1, var2);
	/*Step 1: Creating the freq. distribution table*/
	PROC FREQ DATA=combined_cars_all;
		TABLES &var1*&var2 / OUT=myFreqtable NOROW NOCOL NOPERCENT;
	RUN;

	/*Step 2: format report values*/
	DATA myfreqtable1;
		SET myfreqtable;
		value=CAT(count, '(', ROUND(percent, .01), '%)');
		DROP count percent;
	RUN;

	/*Step 3: transpose origin var*/
	PROC TRANSPOSE DATA=myFreqtable1 OUT=t_myfreq;
		BY &var1;
		ID &var2;
		VAR value;
	RUN;

	TITLE 'Report of Frequency Count and Percentage';

	PROC PRINT DATA=t_myfreq (DROP=_name_);
	RUN;

%MEND;

%myStat(make, type);