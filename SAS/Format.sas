DATA disease;
INPUT diagcode$;
DATALINES;
001
290
800
;
RUN;

PROC PRINT DATA = disease;
RUN;

PROC FORMAT;
VALUE $codetwo
'001' = "Malaria"
'290' = "Social Anxiety Disorder"
'800' = "Leg Injury"
;
RUN;

PROC PRINT DATA = disease;
FORMAT diagcode $codetwo.;
RUN;

DATA diseasereal;
SET disease;
diagdesc=PUT(diagcode, $codetwo.);
RUN;

PROC PRINT DATA=diseasereal;
RUN;