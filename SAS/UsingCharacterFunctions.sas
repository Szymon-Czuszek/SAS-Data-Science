DATA student_info;
INPUT first_name $  last_name $ course $;
CARDS;
Alice Smith STAT101
Bob Johnson HIST201
Charlie Brown ECON301
Diana Lee STAT201
Eva Garcia HIST301
Franklin Davis ECON401
Grace Taylor HIST101
Henry Martin ECON401
;
RUN;

DATA modified_student_info;
	SET student_info;
	
	ufname = UPCASE(last_name);
	
	plname = PROPCASE(first_name);
	
	lenlname = LENGTH(first_name);
	
	fullname = CAT(first_name, last_name);
	
	lfname = LOWCASE(last_name);
	
RUN;