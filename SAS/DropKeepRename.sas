/*============================================================================*/
/* Create a new dataset based on SASHELP.CLASS                                */
/*============================================================================*/

DATA class;

    /* Read observations from the built-in SASHELP.CLASS dataset */
    SET sashelp.class;

    /* Convert weight from pounds to kilograms */
    WeightKg = Weight * 0.454;

    /* Convert height from inches to meters */
    HeightM = Height * 2.54 / 100;

    /* Calculate Body Mass Index (BMI) */
    BMI = WeightKg / (HeightM)**2;

    /* Rename SEX to GENDER in the output dataset */
    RENAME Sex = Gender;

    /* Remove the original WEIGHT variable */
    DROP Weight;

    /*
       Keep only the required variables.

       SEX must be referenced by its original name here,
       even though it is renamed to GENDER in the output.
    */
    KEEP Name Sex Age BMI WeightKg HeightM;

RUN;


/*============================================================================*/
/* Commentary                                                                 */
/*============================================================================*/

/*
   Key SAS Concept: RENAME Statement
   ----------------------------------------------------------------
   The RENAME statement changes the variable name in the
   resulting output dataset.

   RENAME Sex = Gender;

   However, within the DATA step, SEX is still referenced
   by its original name.

   Therefore:

       KEEP Name Sex Age BMI WeightKg HeightM;

   is correct.

   After the DATA step finishes, the variable will appear
   in the CLASS dataset as:

       Gender
*/