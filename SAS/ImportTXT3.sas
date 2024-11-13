DATA houseprice;
INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt' DLM = " ";
INPUT type$ price tax;
profit = ROUND(price * tax);
RUN;

PROC PRINT DATA = houseprice(FIRSTOBS = 3 OBS =4);
RUN;