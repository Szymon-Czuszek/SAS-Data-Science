DATA hr;
INPUT id$ title$ gender$;
DATALINES;
000123 Sales Male
000124 Sales Female

;
RUN;

DATA info;
INPUT id$ name$ phone email$50.;
DATALINES;
000123 Larry 4554545 larry@company.com
000124 . 4789456 susan@company.com

;
RUN;

PROC SQL;
SELECT h. *, name, phone, email
FROM hr as h INNER JOIN info AS i
ON h.id = i.id AND i.name IS NOT missing;
;
QUIT;
