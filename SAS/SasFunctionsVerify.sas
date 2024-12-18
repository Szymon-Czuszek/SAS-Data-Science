DATA errors valid;
INPUT id$ stage : $5.;
IF VERIFY(stage, 'abcd') THEN OUTPUT errors;
ELSE OUTPUT valid;
CARDS;
001 aabcd
002 aabqc
;
RUN;

PROC PRINT DATA = errors;
TITLE 'Errors';
RUN;

PROC PRINT DATA = valid;
TITLE 'Valid';
RUN;

