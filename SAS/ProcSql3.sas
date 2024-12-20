DATA employeesales;
	INPUT empid$ dep$ fname$ payperhr salesm experience;
	DATALINES;
000123 A John 80 50000 5
000124 A Mary 120 75000 6
000125 B Lisa 200 100000 11
000126 C Joseph 50 100000 12
000131 D Glenn 50 60000 1
;
RUN;

PROC SQL;
	SELECT dep, SUM (payperhr, 20) AS SALBONUS
	FROM employeesales
	WHERE CALCULATED SALBONUS GT 55
	;
QUIT;