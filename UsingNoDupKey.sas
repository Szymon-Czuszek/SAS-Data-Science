DATA student_records;
	INPUT student_name $ student_gender $ student_age student_weight;
	CARDS;
Adam M 48 128.6
Adam M 48 128.6
Peter M 58 158.3
Emma F 45 115.5
James M 28 170.1
;
RUN;

PROC SORT DATA=student_records OUT=sorted_student_records NODUPKEY;
	BY student_name;
RUN;