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

/*
   Purpose of the Program
   ----------------------------------------------------------------
   This example demonstrates how to:

   - Create a SAS dataset
   - Define character and numeric variables
   - Read data using the INPUT statement
   - Load inline data with CARDS

   Dataset Structure
   ----------------------------------------------------------------

   Variables:

   name
       Character name

   gender
       Character gender

   height
       Character height

   weight
       Character weight

   Variable Types
   ----------------------------------------------------------------

      Character Variables:
   ------------------------------------------------
   name
   gender

   Numeric Variables:
   ------------------------------------------------
   height
   weight

   The dollar sign ($) tells SAS that the
   variable should be stored as character data.

      INPUT Statement
   ----------------------------------------------------------------

   INPUT
       name $
       gender $
       height
       weight;

   This statement defines:

   - Variable names
   - Variable order
   - Variable types
   */