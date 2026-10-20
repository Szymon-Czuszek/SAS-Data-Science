/*============================================================================*/
/* STEP 1: Import house price data and calculate profit                      */
/*============================================================================*/
DATA houseprice;

    /*
        INFILE specifies the location of the external text file.

        DLM=" " specifies a space as the delimiter separating
        values in the input file.
    */
    INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt'
        DLM = " ";
/*------------------------------------------------------------------------*/
/* STEP 2: Read the input variables                                       */
/*------------------------------------------------------------------------*/
    /*
        Read three variables from each line of the input file.
        TYPE:
            Character variable describing the type of house.
            The '$' indicates that TYPE contains character data.
        PRICE:
            Numeric variable representing the house price.
        TAX:
            Numeric variable representing the tax value or rate.
   */
    INPUT type$ price tax;
    /*------------------------------------------------------------------------*/
    /* STEP 3: Calculate profit                                               */
/*------------------------------------------------------------------------*/
    /*
        Multiply PRICE by TAX and round the result to the nearest integer.

        ROUND() rounds a numeric value to the nearest multiple
        of the specified rounding unit.

        Since no second argument is provided, SAS uses a default
        rounding unit of 1.

        Example:
            ROUND(1250.75) = 1251
            ROUND(1250.25) = 1250

        The result is stored in the new numeric variable PROFIT.
    */
    profit = ROUND(price * tax);

RUN;

PROC PRINT DATA = houseprice(FIRSTOBS = 3 OBS =4);
RUN;