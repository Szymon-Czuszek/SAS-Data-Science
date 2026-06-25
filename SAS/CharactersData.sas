/*============================================================================*/
/* STEP 1: Create character dataset                                           */
/*============================================================================*/

/*
   Dataset CHARACTERS contains information about
   fictional characters, including:

   - name
   - gender
   - height
   - weight

   The data is entered manually using the
   CARDS statement.
*/

DATA characters;

    /* Define input variables */
    INPUT
        name $
        gender $
        height
        weight;

    /* Inline data values */
    CARDS;
Tony M 185 102
Steve M 188 99.8
Natasha F 59.4 170.2
Bruce M 58 176.5
;
RUN;

/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/