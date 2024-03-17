/* This SAS snippet creates a dataset named EMPLOYEES_INFO using the DATA statement.
It reads data from the CARDS section with a comma delimiter.
The INPUT statement specifies the format of the data to be read. */

DATA EMPLOYEES_INFO;
INFILE CARDS DELIMITER =',';
INPUT NAME $ GENDER $ AGE WEIGHT;
CARDS;
Alice,F,35,110.2
Michael,M,42,155.8
Emily,F,27,125.4
David,M,51,180.6
;
RUN;

/* This SAS snippet uses PROC CHART to create various charts based on the EMPLOYEES_INFO dataset. */
PROC CHART DATA = EMPLOYEES_INFO;
VBAR GENDER;
RUN;

PROC CHART DATA = EMPLOYEES_INFO;
HBAR GENDER;
RUN;

PROC CHART DATA = EMPLOYEES_INFO;
PIE GENDER;
RUN;