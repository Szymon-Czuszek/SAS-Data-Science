/*============================================================================*/
/* STEP 1: Create the STUDENT_DATA dataset                                   */
/*============================================================================*/

DATA student_data;

    /*
        Read all observations and variables from SASHELP.CLASS.

        SASHELP.CLASS contains information about students, including:
            - Name
            - Sex
            - Age
            - Height (in inches)
            - Weight (in pounds)
    */
    SET sashelp.class;
	
    /*------------------------------------------------------------------------*/
    /* STEP 2: Convert weight from pounds to kilograms                       */
    /*------------------------------------------------------------------------*/

    /*
        Weight in SASHELP.CLASS is stored in pounds.

        Conversion:
            1 pound ≈ 0.454 kilograms

        A new variable, WeightKg, is therefore created.
    */
    WeightKg = Weight * 0.454;
	
    /*------------------------------------------------------------------------*/
    /* STEP 3: Convert height from inches to metres                           */
    /*------------------------------------------------------------------------*/

    /*
        Height in SASHELP.CLASS is stored in inches.

        Conversion:
            1 inch = 2.54 cm
            100 cm = 1 metre

        Therefore:
            HeightM = Height * 2.54 / 100
    */
    HeightM = Height * 2.54 / 100;

	BMI = (WeightKg/(HeightM)**2);
	
	IF BMI <= 18.5 THEN Status = "Underweight";
	ELSE IF 18.5 < BMI <= 24.9 THEN Status = "Healthy Weight";
	ELSE IF 24.9 < BMI <= 29.9 THEN Status = "Overweight";
	ELSE IF 29.9 < BMI THEN Status = "Obese";
	
RUN;