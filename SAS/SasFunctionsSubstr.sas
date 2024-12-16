DATA new;
date = '06MAY98';
month = SUBSTR(date, 3, 5);
RUN;

PROC PRINT DATA = new;
RUN;

