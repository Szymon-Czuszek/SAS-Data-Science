DATA student_records;
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


DATA modified_student_records;
	SET student_records;
	
	course_name = SUBSTR(course, 1, 3);
	course_number = SUBSTR(course, 4, 3);
	full_name = CAT(TRIM(LEFT(first_name)), last_name);
	full_name1 = CAT(STRIP(first_name), last_name);

RUN;