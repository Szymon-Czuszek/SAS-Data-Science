/* This SAS snippet creates a dataset named EMPLOYEE_PAY using the DATA statement.
It defines variables: EMPLOYEE_NAME, PAY_PERIOD, and PAY_AMOUNT.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values. */

DATA EMPLOYEE_PAY;
INPUT EMPLOYEE_NAME $ PAY_PERIOD $ PAY_AMOUNT;
CARDS;
John Q1 3000
John Q2 2900
John Q3 3000
John Q4 2900
Joe Q1 4000
Joe Q2 3100
Joe Q3 3000
Joe Q4 3900
Liz Q1 2000
Liz Q2 1800
Liz Q3 2000
Liz Q4 2900
;
RUN;

/* This SAS snippet sorts the dataset EMPLOYEE_PAY using the PROC SORT procedure.
It sorts the data by EMPLOYEE_NAME. */

PROC SORT DATA=EMPLOYEE_PAY;
BY EMPLOYEE_NAME;
RUN;

/* This SAS snippet creates a new dataset named EMPLOYEE_TOTAL_PAY using the DATA statement.
It sets the dataset to read from the existing EMPLOYEE_PAY dataset.
The BY statement is used for grouping by EMPLOYEE_NAME.
The RETAIN statement initializes and retains the value of the variable TOTAL_PAY.
The IF statement conditionally assigns the value of TOTAL_PAY based on whether it is the first observation for a given EMPLOYEE_NAME. */

DATA EMPLOYEE_TOTAL_PAY;
SET EMPLOYEE_PAY;
BY EMPLOYEE_NAME;
RETAIN TOTAL_PAY 0;
TOTAL_PAY=TOTAL_PAY+PAY_AMOUNT;
IF FIRST.EMPLOYEE_NAME THEN TOTAL_PAY=PAY_AMOUNT;
RUN;