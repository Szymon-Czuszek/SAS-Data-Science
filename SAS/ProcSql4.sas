DATA insurance;
INPUT name$ insurancen dep$ salary;
DATALINES;
John 4958 MAR 55000
Don 4567 EEL 45000
Shawn 4569 AAF 45495
Ron 3456 RAD 45464
;
RUN;

PROC SQL;
SELECT name, insurancen, dep, salary,
CASE dep
WHEN "MAR" THEN 500
WHEN "AAF" THEN 5000
WHEN "RAD" THEN 7500
ELSE 0
END AS holbon
FROM insurance
ORDER BY name;
QUIT;
