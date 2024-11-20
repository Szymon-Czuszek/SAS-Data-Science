DATA houseprice;
	INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt' DLM=" ";
	INPUT type$ price tax;
	profit=ROUND(price * tax);
RUN;

PROC SORT DATA=houseprice OUT=houseprice2;
	BY price;
RUN;

DATA newhomes;
	INFILE '/home/u63805106/datasetslearnsas/newhomes (2).txt' DLM=" ";
	INPUT type$ price tax;
	profit=ROUND(price * tax);
RUN;

PROC SORT DATA=newhomes OUT=newhomes2;
	BY price;
RUN;

DATA newcollections;
	MERGE houseprice2 newhomes2;
	BY price;
RUN;