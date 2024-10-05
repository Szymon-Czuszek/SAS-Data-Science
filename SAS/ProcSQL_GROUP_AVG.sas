PROC SQL;
    /* Creates a table 'average_age_by_sex' by calculating the average age and grouping by sex from the 'sashelp.class' dataset */
    CREATE TABLE average_age_by_sex AS
    SELECT AVG(age) AS average_age, sex
    FROM sashelp.class 
    GROUP BY sex;
QUIT;