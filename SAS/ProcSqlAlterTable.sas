DATA info;
INPUT empid$ fname$ salary;
DATALINES;
000123 John 175
000124 Mary 155
000125 Lisa 190
000126 Joseph 187
;
RUN;

DATA info2;
INPUT empidd$ bonus;
DATALINES;
000123 150
000124 120
000125 180
000126 160
;
RUN;

PROC SQL;
TITLE "Final Table";
CREATE TABLE final AS
SELECT empid "Employee ID" format$6., fname, salary, bonus
FROM info AS i FULL JOIN info2 as ii
ON i.empid = ii.empidd;
SELECT * FROM final;
QUIT;

PROC SQL;
ALTER TABLE final
ADD totalcomp num label= "Total Compensation" format=dollar8.;
QUIT;

PROC SQL;
UPDATE final
SET totalcomp=salary + bonus;
QUIT;

PROC SQL;
SELECT empid, fname, salary, bonus, totalcomp
FROM final;
QUIT;
