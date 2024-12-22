DATA insurance;
INPUT name$ insurancen dep$ salary;
DATALINES;
John 4958 MAR 55000
Don 4567 EEL 45000
Shawn 4569 AAF 45495
Jerry 5768 AAF 47858
Ron 3456 RAD 45464
Bonny 7778 RAD 55640
;
RUN;

PROC SQL;
SELECT name, dep,
AVG(salary) AS avsal,
SUM(salary) AS sumsal,
MIN(salary) AS minsal,
MAX(salary) AS maxsal
FROM insurance
GROUP BY dep
ORDER BY avsal DESC;
QUIT;
