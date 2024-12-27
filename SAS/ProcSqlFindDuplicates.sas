DATA employeedata;
INPUT empid$ fname$ salary;
DATALINES;
000123 John 50000
000124 Mary 65000
000125 Lisa 95000
000126 Joseph 43000
000127 Glenn 32000
000128 Jessica 43000
000129 Mary 65000
000129 Mary 65000
;
RUN;

PROC SQL;
TITLE "Duplicate Rows";
SELECT *, COUNT(*) AS COUNT
FROM employeedata
GROUP BY empid, fname, salary
HAVING COUNT(*) > 1;
QUIT;
