DATA summing;
	sumthis=SUM(7, 9, 13);
	vararg=SUM(sumthis);
	numargum=SUM(6, 8);
	expargum=SUM(sumthis *7/2);
	varargumlist=SUM(of Var1-Var5);
	datetoday=TODAY();
RUN;

PROC PRINT DATA=summing;
	FORMAT datetoday date11.;
RUN;

DATA splitname;
	LENGTH name $ 16;
	INPUT name & $;
	Prefix=SCAN(name, 3);
	DATALINES;
Mr Ermin Dedic
Dr Joanna Ratner
;
RUN;