/*
This SAS snippet creates a dataset named VITALS using the DATA statement.
It defines variables: SID, NAME, TEST, and VALUE.
The INPUT statement specifies the format of the data to be read.
The CARDS statement provides the data values.
*/

DATA VITALS;
INPUT SID NAME $ TEST $ VALUE;
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
This SAS snippet sorts the dataset VITALS using the PROC SORT procedure.
It sorts the data by SID and NAME.
*/

PROC SORT DATA=VITALS;
BY SID NAME;
RUN;

/*
This SAS snippet uses the PROC TRANSPOSE procedure to transpose the dataset VITALS.
It transposes the variable VALUE.
The ID statement specifies the variable TEST as the identifier.
The BY statement specifies the variables SID and NAME for grouping.
The resulting transposed dataset is named T_VITALS.
*/

PROC TRANSPOSE DATA=VITALS OUT=T_VITALS;
VAR VALUE;
ID TEST;
BY SID NAME;
RUN;





