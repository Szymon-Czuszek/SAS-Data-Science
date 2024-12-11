DATA coal;
INPUT home cell;
numvalue = coalesce(home, cell);
DATALINES;
6578975
6448565
;
RUN;

PROC PRINT DATA = coal;
RUN;

