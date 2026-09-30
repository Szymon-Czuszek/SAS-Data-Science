DATA student_data;
	SET sashelp.class;
	
	WeightKg = Weight * 0.454;
	
	HeightM = Height * 2.54/100;

	BMI = (WeightKg/(HeightM)**2);
	
	IF BMI <= 18.5 THEN Status = "Underweight";
	ELSE IF 18.5 < BMI <= 24.9 THEN Status = "Healthy Weight";
	ELSE IF 24.9 < BMI <= 29.9 THEN Status = "Overweight";
	ELSE IF 29.9 < BMI THEN Status = "Obese";
	
RUN;