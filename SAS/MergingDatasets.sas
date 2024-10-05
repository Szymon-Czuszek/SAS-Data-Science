DATA employee_info;
INPUT employee_name $ employee_gender $ employee_age employee_weight;
CARDS;
Adam M 48 128.6
Peter . 58 158.3
Liz F . 115.5
Joe M 28 170.1
;
RUN;
DATA employee_height;
INPUT employee_name $ employee_height;
CARDS;
Adam 165
Peter 155
Liz 176
Joe 152
;
RUN;
PROC SORT DATA=employee_info;
BY employee_name;
PROC SORT DATA=employee_height;
BY employee_name;
RUN;

DATA combined_employee_data;
MERGE employee_info employee_height;
BY employee_name;
RUN;