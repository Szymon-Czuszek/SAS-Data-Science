DATA student_health_data;
	SET sashelp.class;
	weight_kg=weight * 0.454;
	height_m=height * 2.54 / 100;
	bmi_metric=weight_kg / (height_m * height_m);
	OUTPUT;
	bmi_imperial=weight / (height * height);
	OUTPUT;
RUN;