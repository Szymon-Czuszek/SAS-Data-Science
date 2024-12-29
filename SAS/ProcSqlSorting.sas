DATA employeedata;
INPUT empid$ fname$ salary hiremonth$;
DATALINES;
000123 John 50000 Sep-Dec
000124 Mary 65000 Jul-Aug
000125 Lisa 95000 Jul-Aug
000126 Joseph 43000 Jan-Mar
000127 Glenn 32000 Apr-Jun
000128 Jessica 43000 Sep-Dec
000129 Mary 65000Apr-Jun
000129 Mary 65000 Apr-Jun
;
RUN;

PROC SQL;
TITLE "Ranking Employees by Order";
SELECT empid, fname, salary, hiremonth
FROM (
	SELECT empid, fname, salary, hiremonth,
		CASE 
			WHEN hiremonth = "Jan-Mar" THEN 1
			WHEN hiremonth = "Apr-Jun" THEN 2
			WHEN hiremonth = "Jul-Aug" THEN 3
			WHEN hiremonth = "Sep-Dec" THEN 4
			ELSE .
			
		END AS hiremonthsort
		FROM employeedata
)
ORDER BY hiremonth;
QUIT;
