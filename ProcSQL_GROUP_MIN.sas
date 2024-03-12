PROC SQL;
    /* Creates a table 'minimum_msrp_by_origin' by calculating the minimum MSRP and grouping by origin from the 'sashelp.cars' dataset */
    CREATE TABLE minimum_msrp_by_origin AS
    SELECT MIN(msrp) AS minimum_msrp, origin
    FROM sashelp.cars 
    GROUP BY origin;
QUIT;