DATA selected_females;
	SET sashelp.class;
	WHERE sex = "F";
RUN;