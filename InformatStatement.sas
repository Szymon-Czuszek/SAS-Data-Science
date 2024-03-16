/* This SAS snippet creates a dataset named EMPLOYEE_BONUS using the DATA statement.
It defines variables: EMPLOYEE_NAME, BONUS_AMOUNT, and DATE_OF_BIRTH.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values. */

DATA EMPLOYEE_BONUS;
INPUT EMPLOYEE_NAME $ BONUS_AMOUNT DATE_OF_BIRTH ;
INFORMAT BONUS_AMOUNT dollar5. DATE_OF_BIRTH date7.;
CARDS;
Alice $5500 20Apr80 
Bob $1200 01Mar92
Eva $6750 24Oct76
Dan $4560 17Dec87
;
RUN;

/* This SAS snippet creates a duplicate dataset named EMPLOYEE_BONUS1 using the DATA statement.
It sets the dataset to read from the existing EMPLOYEE_BONUS dataset.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values. */

DATA EMPLOYEE_BONUS1;
INPUT EMPLOYEE_NAME $ BONUS_AMOUNT DATE_OF_BIRTH ;
INFORMAT BONUS_AMOUNT dollar5. DATE_OF_BIRTH date7.;
CARDS;
Alice $5500 20Apr80 
Bob $1200 01Mar92
Eva $6750 24Oct76
Dan $4560 17Dec87
;
RUN;