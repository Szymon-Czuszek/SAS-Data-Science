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

DATA backup;
INPUT id$ cphone;
DATALINES;
000123 4334545
000124 4789336

;
RUN;

PROC SQL;
SELECT h. *, name, phone, email, cphone
FROM hr as h, info as i, backup as b
WHERE h.id = i.id AND i.id = b.id
;
QUIT;
