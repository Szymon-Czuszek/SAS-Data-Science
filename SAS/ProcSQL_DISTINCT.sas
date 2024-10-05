PROC SQL;
    /* Creates a table 'unique_gender_age' by selecting distinct gender and age from the 'sashelp.class' dataset, ordered by gender and age */
    CREATE TABLE unique_gender_age AS
    SELECT DISTINCT gender, age
    FROM sashelp.class
    ORDER BY gender, age;
QUIT;