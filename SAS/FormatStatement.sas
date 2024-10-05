/* This SAS snippet creates a dataset named EMPLOYEE_SALARY using the DATA statement.
It defines variables: WORKER, PAY, and WORKER_ID.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values. */

DATA EMPLOYEE_SALARY;
INPUT WORKER $ PAY WORKER_ID;
FORMAT PAY dollar10.2 WORKER_ID ssn11.;
CARDS;
Alice 62000 145233421 
Bob 75000 432459291
Eva 59000 912342392
Dan 44000 170343929
;
RUN;

/* This SAS snippet creates a new dataset named SALARY_DETAILS using the DATA statement.
It sets the dataset to read from the existing EMPLOYEE_SALARY dataset.
The PUT function is used to convert numeric values to character values for PAY and WORKER_ID.
The PUT function formats the variables with appropriate dollar and SSN formats. */

DATA SALARY_DETAILS;
SET EMPLOYEE_SALARY;
PAYMENT_TXT = PUT(PAY, dollar10.2);
ID_TXT = PUT(WORKER_ID, ssn11.);
RUN;