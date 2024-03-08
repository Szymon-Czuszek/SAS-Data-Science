DATA student_data_1;
INPUT student_name $ gender $ student_age student_weight;
CARDS;
Adam M 48 128.6
Sophia . 58 158.3
Emma F . 115.5
James M 28 170.1
;
RUN;

DATA student_data_2;
INPUT student_name $ gender $ student_age student_weight;
CARDS;
Michael M 34 150.2
Patricia F 56 125.0
;
RUN;

DATA combined_student_data;
	SET student_data_1 student_data_2;
RUN;