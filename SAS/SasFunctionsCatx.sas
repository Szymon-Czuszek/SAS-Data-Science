DATA concat;
separator = ',';
first = '   Larry';
last = 'Larryson   ';
result = CATX(separator, first, last);
DROP separator;
RUN;

PROC PRINT DATA = concat;
RUN;

DATA concat1;
separator = ',';
first = '   Larry';
last = 'Larryson   ';
result = CAT(separator, first, last);
DROP separator;
RUN;

PROC PRINT DATA = concat1;
RUN;