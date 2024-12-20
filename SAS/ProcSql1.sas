DATA employeesales;
	INPUT empid$ fname$ payperhr salesm experience;
	DATALINES;
000123 John 80 50000 5
000124 Mary 120 75000 6
000125 Lisa 200 100000 11
000126 Joseph 50 100000 12
000131 Glenn 50 60000 1
;
RUN;

PROC SQL;
	SELECT empid, fname, payperhr, salesm, experience
	FROM employeesales
	WHERE payperhr BETWEEN 50 AND 100
	ORDER BY fname
	;
QUIT;