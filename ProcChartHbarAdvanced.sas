/* This SAS snippet creates a dataset named STUDENT_DATA using the DATA statement.
It defines variables: STUDENT_NAME, STUDENT_GENDER, STUDENT_AGE, COURSE_NUMBER, and MAJOR.
The INPUT statement specifies the format of the data to be read. */

DATA STUDENT_DATA;
INPUT STUDENT_NAME $ STUDENT_GENDER $ STUDENT_AGE COURSE_NUMBER MAJOR $;
CARDS;
Alice F 22 101 PSYC
Bob M 25 102 ECON
Cathy F 23 201 BIOL
David M 27 301 ENGR
Eva F 24 202 HIST
Frank M 26 102 ECON
Gina F 25 201 BIOL
Harry M 28 303 ENGR
;
RUN;

/* This SAS snippet uses PROC CHART to create a horizontal bar chart based on the STUDENT_DATA dataset. */
PROC CHART DATA=STUDENT_DATA;
	HBAR COURSE_NUMBER / DISCRETE GROUP=MAJOR SUBGROUP=STUDENT_GENDER SUMVAR=STUDENT_AGE TYPE=MEAN;
RUN;