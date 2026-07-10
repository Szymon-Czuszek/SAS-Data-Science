/*============================================================================*/
/* STEP 1: Create sales dataset                                               */
/*============================================================================*/

/*
   Dataset SALES contains quarterly sales
   values for each employee.

   The program also calculates the total
   sales across all four periods.
*/

DATA sales;

    /* Read employee name and quarterly sales values */
    INPUT
        Name $
        Sales_1-Sales_4;

    /* Calculate total sales across all quarters */
    total = SUM(
        Sales_1,
        Sales_2,
        Sales_3,
        Sales_4
    );

    /* Inline data values */
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
;
RUN;


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*