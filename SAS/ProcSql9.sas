DATA idfname;
INPUT empid $ fname $ height;
DATALINES;
000123 John 170
000124 Mary 175
000125 Shawn 160
000126 Jerry 150
000127 Samantha 190
000128 Donna 187
;
RUN;

DATA contactinfo;
INPUT empid $ lname $20. weight;
DATALINES;
000123 Harris 155
000333 Ducet 130
000444 Slater 230
000126 Smith 225
000127 Jefferson 145
000128 Barrister 150
;
RUN;

PROC SQL;
SELECT COALESCE(d.empid, dd.empid) AS empid, COALESCE(d.fname, "") AS fname, height, weight
FROM idfname AS d FULL JOIN contactinfo AS dd
ON d.empid = dd.empid;
QUIT;
