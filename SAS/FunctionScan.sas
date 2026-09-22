/*============================================================================*/
/* STEP 1: Create the COUNTRY_DATA dataset                                   */
/*============================================================================*/

DATA country_data;

    /*
        Create a character variable containing the country name.

        The string intentionally contains multiple spaces between words.
        SAS stores these spaces as part of the character value.
    */
    a = '     United     Kingdom   of    Great    Britain   ';


    /*