FILENAME my_data '/home/u62422869/The Simplest Guide to SAS/my_data_file.dat';
DATA student_data;
INFILE my_data;
INPUT Name $1-5 Age 6-7 Gender $ @18 Weight;
RUN;