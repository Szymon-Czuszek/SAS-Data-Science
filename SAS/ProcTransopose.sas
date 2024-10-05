/*
This SAS snippet creates a dataset named STUDENT_INFO using the DATA statement.
It defines variables: STUDENT_NAME, STUDENT_GENDER, STUDENT_AGE, and STUDENT_WEIGHT.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values.
*/

DATA STUDENT_INFO;
INPUT STUDENT_NAME $ STUDENT_GENDER $ STUDENT_AGE STUDENT_WEIGHT;
CARDS;
John M 48 128.6
Peter M 58 158.3
Liz F 45 115.5
Joe M 28 170.1
;
RUN;

/*
This SAS snippet uses the PROC TRANSPOSE procedure to transpose the dataset STUDENT_INFO.
It transposes the variables STUDENT_GENDER, STUDENT_AGE, and STUDENT_WEIGHT.
The ID statement specifies the variable STUDENT_NAME as the identifier.
The resulting transposed dataset is named T_STUDENT_INFO.
*/

PROC TRANSPOSE DATA=STUDENT_INFO OUT=T_STUDENT_INFO;
VAR STUDENT_GENDER STUDENT_AGE STUDENT_WEIGHT;
ID STUDENT_NAME;
RUN;