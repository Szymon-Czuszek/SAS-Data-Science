/*============================================================================*/
/* STEP 1: Create a fileref for the external data file                       */
/*============================================================================*/

/*
    Assign the physical location of the external file to the fileref MY_DATA.

    The fileref can then be used in the INFILE statement instead of
    repeatedly specifying the complete file path.
*/
FILENAME my_data
    '/home/u62422869/The Simplest Guide to SAS/my_data_file.dat';

/*============================================================================*/
/* STEP 2: Read the fixed-width data into a SAS dataset                      */
/*============================================================================*/

DATA student_data;

    /*
        Read observations from the external file referenced by MY_DATA.
    */
    INFILE my_data;

    /*
        Read variables using fixed column positions */
INPUT Name $1-5 Age 6-7 Gender $ @18 Weight;
RUN;