DATA idfname;
INPUT empid$ fname;
DATALINES;
000123 John
000124 Mary
000125 Shawn
000126 Jerry
000127 Samantha
000128 Donna
;
RUN;

DATA contactinfo;
INPUT empid$ lname$20.;
DATALINES;
000123 Harris
000333 Ducet
000444 Slater
000126 Smith
000127 Jefferson
000128 Barrister
;
RUN;

PROC SQL;
SELECT idfname.*, lname
FROM idfname LEFT JOIN contactinfo
ON idfname.empid = contactinfo.empid
ORDER BY empid;
;
QUIT;
