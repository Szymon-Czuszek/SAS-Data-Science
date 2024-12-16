DATA concat;
separator = ',';
first = '   Larry';
last = 'Larryson   ';
result = CATX(separator, first, last);
scann = SCAN(result, 1);
DROP separator;
RUN;

PROC PRINT DATA = concat;
RUN;