DATA employee_data;
	INPUT employee_name $ employee_gender $ employee_age employee_weight;
	CARDS;
John M 48 128.6
John M 48 128.6
Peter M 58 158.3
Liz F 45 115.5
Joe M 28 170.1
;
RUN;

PROC SORT DATA=employee_data OUT=sorted_employee_data NODUP;
	BY employee_name;
RUN;