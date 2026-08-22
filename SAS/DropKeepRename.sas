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

   Calculated Variables
   ----------------------------------------------------------------

   WeightKg:
       Converts weight from pounds to kilograms.

   HeightM:
       Converts height from inches to meters.

   BMI:
       Calculates Body Mass Index using:

       weight in kilograms / height in meters squared

   DROP and KEEP
   ----------------------------------------------------------------

   DROP Weight;

   removes the original WEIGHT variable.

   KEEP specifies the variables that should be included
   in the output dataset.

   Since KEEP is already explicitly selecting the output
   variables, DROP Weight is redundant in this example,
   but it demonstrates the use of the DROP statement.

   Final Variables
   ----------------------------------------------------------------
*/