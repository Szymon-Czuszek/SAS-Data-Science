/*============================================================================*/
/* Read house price data from a text file                                     */
/*============================================================================*/

DATA houseprice;

    /* Read the input text file using a space as the delimiter */
    INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt' DLM=" ";

    /* Read the variables from each row of the input file */
    INPUT type$ price tax;

    /* Calculate profit as price multiplied by tax, rounded to an integer */
    profit = ROUND(price * tax);

RUN;

/*============================================================================*/
/* Filter houses based on their price                                         */
/*============================================================================*/

DATA filter;

    /* Create the FILTER dataset from HOUSEPRICE */
    SET houseprice;

    /* Keep only houses with a price below 200,000 */
    IF price < 200000;

RUN;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   DATA HOUSEPRICE
   ----------------------------------------------------------------
   The first DATA step imports house price information from an
   external text file.

   INFILE specifies the location of the source file, while
   DLM=" " tells SAS that values are separated by spaces.

   The INPUT statement reads three variables:

       TYPE
           House type, stored as a character variable.

       PRICE
           House price.