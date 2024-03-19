/* This SAS snippet creates a dataset named PERSONAL_INFO using the DATA statement.
It defines variables: PERSON_NAME, PERSON_GENDER, PERSON_AGE, and PERSON_WEIGHT.
The INPUT statement specifies the format of the data to be read. */
DATA PERSONAL_INFO;
	INPUT PERSON_NAME $ PERSON_GENDER $ PERSON_AGE PERSON_WEIGHT;
	CARDS;
John M 48 128.6
Peter M 58 158.3
Liz F 45 115.5
Joe M 28 170.1
;
RUN;

/* This SAS snippet uses PROC PLOT to create a scatter plot based on the PERSONAL_INFO dataset. */
PROC PLOT DATA=PERSONAL_INFO;
	PLOT PERSON_AGE*PERSON_WEIGHT;
RUN;

	/* This SAS snippet uses PROC PLOT to create a scatter plot with symbols based on the PERSONAL_INFO dataset. */
PROC PLOT DATA=PERSONAL_INFO;
	PLOT PERSON_AGE*PERSON_WEIGHT='*';
RUN;