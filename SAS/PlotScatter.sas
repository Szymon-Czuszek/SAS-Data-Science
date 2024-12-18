DATA houseprice;
INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt';
INPUT type$ price tax;
RUN;

PROC GPLOT DATA = houseprice;
TITLE 'House Price';
FORMAT price dollar9.;
SYMBOL1 VALUE = dot CV = blue;
SYMBOL2 VALUE = square CV = RED;
PLOT price*tax = type;
RUN;
