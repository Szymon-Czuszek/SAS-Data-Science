DATA salaryemp(KEEP = salary RENAME = salary = salaryemp);
INFILE '/home/u63805106/datasetslearnsas/salary (2).txt' DLM = " ";
INPUT year salary;
RUN;

PROC PRINT DATA = salaryemp(FIRSTOBS = 3 OBS =4);
RUN;