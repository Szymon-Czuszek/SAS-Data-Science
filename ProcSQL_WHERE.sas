PROC SQL;
    /* Creates a table 'male_students' by selecting all records from the 'sashelp.class' dataset where sex is 'M' */
    CREATE TABLE male_students AS
    SELECT *
    FROM sashelp.class
    WHERE sex = 'M';
QUIT;