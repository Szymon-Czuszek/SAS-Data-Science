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
        SCAN() extracts a specific word (token) from a character string.

        Syntax:
            SCAN(character_string, word_number)

        Here:
            a     = the source character string
            4     = extract the 4th word

        SCAN() treats one or more consecutive spaces as delimiters
        by default.