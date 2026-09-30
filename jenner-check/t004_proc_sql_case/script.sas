DATA employeesales;
    INPUT empid $ fname $ payperhr salesm experience;
    DATALINES;
    000123 John 80 50000 4
    000124 Mary 120 65000 8
    000125 Lisa 200 95000 10
    000126 Joseph 70 43000 2
    000127 Glenn 50 32000 1
    000128 Jessica 30 43000 1
    000129 Mary 150 65000 6
    000129 Mary 135 65000 5
    ;
RUN;

PROC SQL;
    TITLE "Employee Sales with Adjusted Pay Per Hour";
    SELECT empid, fname, payperhr, salesm, experience
    FROM employeesales;
QUIT;

PROC SQL;
    CREATE TABLE updated_employeesales AS
    SELECT empid, fname, 
           CASE 
               WHEN salesm >= 100000 THEN payperhr + 10
               WHEN salesm >= 50000 THEN 
                   CASE
                       WHEN experience BETWEEN 1 AND 5 THEN payperhr + 1
                       WHEN experience BETWEEN 6 AND 10 THEN payperhr + 3
                       WHEN experience BETWEEN 11 AND 20 THEN payperhr + 6
                       ELSE payperhr
                   END
               ELSE payperhr
           END AS payperhr, 
           salesm, experience
    FROM employeesales;
QUIT;
