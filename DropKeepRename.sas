DATA class;
	SET sashelp.class;
	
	WeightKg = Weight * 0.454;
	
	HeightM = Height * 2.54/100;

	BMI = (WeightKg/(HeightM)**2);
	
	RENAME Sex = Gender;
	
	DROP Weight;
	
	KEEP Name Sex Age BMI WeightKg HeightM;

RUN;

* Note how we renamed the variable Sex, but still had to reference it by its original name.