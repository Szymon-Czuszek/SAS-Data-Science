/* This SAS snippet creates a dataset named CLASS using the DATA statement.
It defines variables: NAME, GENDER, AGE, COURSENO, and MAJOR.
The INPUT statement specifies the format of the data to be read. */

DATA CLASS;
INPUT NAME $ GENDER $ AGE COURSENO MAJOR $;
CARDS;
John M 48 101 STAT
Peter M 58 101 HIST
Liz F 25 201 STAT
Joe M 28 301 ENGG
Mike M 34 202 HIST
Pat F 34 201 STAT
Jil F 45 101 HIST
Tom M 56 301 ENGG
;
RUN;

/* This SAS snippet uses PROC MEANS to generate descriptive statistics for the AGE variable from the CLASS dataset. */
PROC MEANS DATA=CLASS;
VAR AGE;
RUN;