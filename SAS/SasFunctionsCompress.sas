DATA compressed;
INPUT phonen$1-15;
phone1 = COMPRESS(phonen);
phone2 = COMPRESS(phonen, '(-)','s');
DATALINES;
(314)456-4768
(314) 453-56 78
;
RUN;

PROC PRINT DATA=compressed;
RUN;