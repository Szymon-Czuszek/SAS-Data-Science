DATA houseprice;
	INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt' DLM=" ";
	INPUT type$ price tax;
	profit=ROUND(price * tax);
RUN;

DATA filter;
	SET houseprice;

	IF price<200000;
RUN;