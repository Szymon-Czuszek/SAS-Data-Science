DATA inputfunction;
INPUT sale $9.;
numsale = INPUT(sale, comma9.);
DATALINES;
6, 525, 352
;
RUN;

PROC PRINT DATA = inputfunction;
RUN;
