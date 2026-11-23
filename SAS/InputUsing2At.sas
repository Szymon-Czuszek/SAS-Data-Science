/*============================================================================*/
/* STEP 1: Create the INDIVIDUALS dataset                                    */
/*============================================================================*/

/*
    Create a dataset named INDIVIDUALS containing personal information.

    Variables:
    FIRST - First name
    LAST  - Last name
    SEX   - Gender
    AGE   - Age in years
    MASS  - Body mass
*/

DATA individuals;

    /*-----------------------------------------------------------------------*/
    
input first :$10. last :$13. sex $ age mass @@;
cards;
Alice White F 35 110.2 Michael Brown M 42 155.8
Emily Green F 27 125.4 David Jones M 51 180.6
;
run;