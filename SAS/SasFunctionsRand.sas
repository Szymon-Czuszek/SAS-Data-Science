DATA rand;
CALL streaminit(12345);
DO i = 1 to 200;
x = rand("Normal");
OUTPUT;
END;
RUN;

PROC SGPLOT DATA = rand;
TITLE "Random Values from N(0,1)";
HISTOGRAM x;
RUN;

PROC FREQ DATA = rand;
RUN;