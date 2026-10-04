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

PROC SQL;
	SELECT total FROM sales WHERE total > 50;

PROC PRINT DATA=sales(where=(total >50));
RUN;

PROC PRINT DATA=sales;
	WHERE total > 50;
RUN;