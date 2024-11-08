DATA test;
INPUT x y;
IF _error_ = 1 THEN
PUT "** Error in row " _n_ " **";
DATALINES;
1 1
2 3
3 n
4 4
;
RUN;