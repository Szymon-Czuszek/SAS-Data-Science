/*============================================================================*/
/* STEP 1: Create the SALES dataset                                          */
/*============================================================================*/

DATA sales;

    /*
        Read the employee name and four sales values.

        NAME:
            Character variable containing the employee's name.

        SALES_1-SALES_4:
            Four numeric variables containing the individual
            sales values.
    */
    INPUT Name$ Sales_1-Sales_4;
    /*
        Calculate the total sales for each employee.

        SUM() adds the four sales variables together.
    */
    total = SUM(Sales_1, Sales_2, Sales_3, Sales_4);
    /*
        Provide the input data directly in the program.
    */
    CARDS;
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
;

RUN;

/*============================================================================*/
/* STEP 2: Filter observations using PROC SQL                                */
/*============================================================================*/

PROC SQL;

    /*
        Select only the TOTAL variable from SALES.

        The WHERE clause restricts the result to observations
        where TOTAL is greater than 50.

        Expected values:
            130
            125
    */
    SELECT total
    FROM sales
    WHERE total > 50;

QUIT;

/*============================================================================*/
/* STEP 3: Filter observations using a DATASET WHERE= option                 */
/*============================================================================*/

PROC PRINT DATA=sales(WHERE=(total > 50));
    /*
        The WHERE= dataset option filters the observations
        before PROC PRINT processes the dataset.

        Only observations where TOTAL > 50 are passed to PROC PRINT.
    */
RUN;

/*============================================================================*/
/* STEP 4: Filter observations using a WHERE statement                      */
/*============================================================================*/

PROC PRINT DATA=sales;

    /*
        The WHERE statement tells PROC PRINT to display only
        observations where TOTAL is greater than 50.
    */
    WHERE total > 50;
RUN;