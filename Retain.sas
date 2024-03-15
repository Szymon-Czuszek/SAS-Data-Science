/* This SAS snippet creates a dataset named EMPLOYEE_SALARY using the DATA statement.
It defines variables: EMPLOYEE_NAME, PAY_PERIOD, and SALARY_AMOUNT.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values. */

DATA EMPLOYEE_SALARY;
INPUT EMPLOYEE_NAME $ PAY_PERIOD $ SALARY_AMOUNT;
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

/* This SAS snippet sorts the dataset EMPLOYEE_SALARY using the PROC SORT procedure.
It sorts the data by EMPLOYEE_NAME. */

PROC SORT DATA=EMPLOYEE_SALARY;
BY EMPLOYEE_NAME;
RUN;

/* This SAS snippet creates a new dataset named SALARY_TOTALS using the DATA statement.
It sets the dataset to read from the existing EMPLOYEE_SALARY dataset.
The BY statement is used for grouping by EMPLOYEE_NAME.
The RETAIN statement initializes and retains the value of the variable TOTAL_SALARY.
The IF statement conditionally assigns the value of TOTAL_SALARY based on whether it is the first observation for a given EMPLOYEE_NAME. */

DATA SALARY_TOTALS;
SET EMPLOYEE_SALARY;
BY EMPLOYEE_NAME;
RETAIN TOTAL_SALARY 0;
TOTAL_SALARY = TOTAL_SALARY + SALARY_AMOUNT;
IF FIRST.EMPLOYEE_NAME THEN TOTAL_SALARY = SALARY_AMOUNT;
RUN;