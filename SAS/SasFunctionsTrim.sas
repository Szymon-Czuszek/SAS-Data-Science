DATA trimdata;
	INPUT firstname$ lastname$ age tscore;
	LENGTH name$20;
	name=(lastname)||', '||firstname;
	DATALINES;
Alex Benson 27 45
;
RUN;

PROC CONTENTS DATA=trimdata;
RUN;

PROC PRINT DATA=trimdata;
RUN;