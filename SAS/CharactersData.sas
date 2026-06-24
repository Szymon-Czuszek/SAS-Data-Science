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
data characters;
input name $ gender $ height weight;
cards;
Tony M 185 102
Steve M 188 99.8
Natasha F 59.4 170.2
Bruce M 58 176.5
;
run;