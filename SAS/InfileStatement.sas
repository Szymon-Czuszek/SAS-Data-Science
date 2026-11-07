/*============================================================================*/
/* STEP 1: Create a fileref for the external data file                       */
/*============================================================================*/

/*
    Assign the physical location of the external file to the fileref MY_DATA.
*/
FILENAME my_data '/home/u62422869/The Simplest Guide to SAS/my_data_file.dat';
DATA student_data;
INFILE my_data;
INPUT Name $1-5 Age 6-7 Gender $ @18 Weight;
RUN;