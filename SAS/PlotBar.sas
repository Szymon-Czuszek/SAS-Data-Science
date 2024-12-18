DATA houseprice;
INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt';
INPUT type$ price tax;
RUN;

PROC GPLOT DATA = houseprice;
TITLE 'House Price Scatter';
FORMAT price dollar9.;
SYMBOL1 VALUE = dot CV = blue;
SYMBOL2 VALUE = square CV = RED;
PLOT price*tax = type;
RUN;

PROC GCHART DATA = houseprice;
TITLE 'House Price Bar';
FORMAT price dollar9.;
VBAR price tax/ GROUP = type;
PATTERN COLOR = yellow;
RUN;