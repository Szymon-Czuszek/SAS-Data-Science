/*
This SAS snippet creates a dataset named PATIENT_VITALS using the DATA statement.
It defines variables: PATIENT_ID, PATIENT_NAME, TEST_TYPE, and TEST_VALUE.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values.
*/

DATA PATIENT_VITALS;
INPUT PATIENT_ID PATIENT_NAME $ TEST_TYPE $ TEST_VALUE;
CARDS;
101 John SBP 120
101 John DBP 90
102 Joe SBP 132
103 Peter SBP 100
104 Liz SBP 99
103 Peter DBP 67
102 Joe DBP 49
;
RUN;

/*
This SAS snippet sorts the dataset PATIENT_VITALS using the PROC SORT procedure.
It sorts the data by PATIENT_ID and PATIENT_NAME.
*/

PROC SORT DATA=PATIENT_VITALS;
BY PATIENT_ID PATIENT_NAME;
RUN;

/*
This SAS snippet uses the PROC TRANSPOSE procedure to transpose the dataset PATIENT_VITALS.
It transposes the variable TEST_VALUE.
The ID statement specifies the variable TEST_TYPE as the identifier.
The BY statement specifies the variables PATIENT_ID and PATIENT_NAME for grouping.
The resulting transposed dataset is named T_PATIENT_VITALS.
*/

PROC TRANSPOSE DATA=PATIENT_VITALS OUT=T_PATIENT_VITALS;
VAR TEST_VALUE;
ID TEST_TYPE;
BY PATIENT_ID PATIENT_NAME;
RUN;
