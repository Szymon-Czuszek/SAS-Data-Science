/*============================================================================*/
/* Read house price data from a text file                                     */
/*============================================================================*/

DATA houseprice;

    /* Read the input text file using a space as the delimiter */
    INFILE '/home/u63805106/datasetslearnsas/houseprice (2).txt' DLM=" ";

    /* Read the variables from each row of the input file */
    INPUT type$ price tax;