PROC SQL;
    /* Creates a table 'student_info' by selecting all records from the 'sashelp.class' dataset */
    CREATE TABLE student_info AS
    SELECT *
    FROM sashelp.class;
QUIT;