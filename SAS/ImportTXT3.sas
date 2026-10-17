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
        
INPUT type$ price tax;
profit = ROUND(price * tax);
RUN;

PROC PRINT DATA = houseprice(FIRSTOBS = 3 OBS =4);
RUN;