DATA newhomes;
INPUT type$ price tax;
DATALINES;
Duplex 150000 0.15
Duplex 160000 0.18
Duplex 180000 0.15
;
RUN;

%LET newv = tax;
PROC MEANS DATA=newhomes;
VAR &newv;
RUN;