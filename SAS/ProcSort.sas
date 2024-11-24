DATA houseprice;
	INPUT type$ price tax;
	CARDS;
Single 300000 0.20
Single 250000 0.25
Duplex 175000 0.15
;
RUN;

PROC PRINT DATA=houseprice;
RUN;

PROC SORT DATA=houseprice OUT=sortedhouseprice;
	BY DESCENDING tax;
RUN;

PROC PRINT DATA=sortedhouseprice;
RUN;