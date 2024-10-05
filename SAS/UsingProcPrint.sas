/* This SAS snippet creates a dataset named PERSON_INFO using the DATA statement.
It defines variables: PERSON_NAME, PERSON_GENDER, PERSON_AGE, and PERSON_WEIGHT.
The INPUT statement specifies the format of the data to be read. */

DATA PERSON_INFO;
INPUT PERSON_NAME $ PERSON_GENDER $ PERSON_AGE PERSON_WEIGHT ;
CARDS;
John M 48 128.6
Peter M 58 158.3
Liz F 45 115.5
Joe M 28 170.1
;
RUN;

/* This SAS snippet uses PROC PRINT to display selected data from the PERSON_INFO dataset. */
PROC PRINT DATA=PERSON_INFO NOOBS;
VAR PERSON_NAME PERSON_GENDER PERSON_AGE PERSON_WEIGHT;
WHERE PERSON_GENDER='M';
RUN;