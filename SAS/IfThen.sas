/*============================================================================*/
/* STEP 1: Create the SALES dataset                                          */
/*============================================================================*/

DATA sales;

    /*
        Read the employee name and four sales values.

        NAME:
            Character variable containing the employee's name.

        SALES_1-SALES_4:
            Four numeric variables containing sales values.

        The hyphen notation tells SAS to read the consecutive variables:
            SALES_1
            SALES_2
            SALES_3
            SALES_4
    */
    INPUT Name$ Sales_1-Sales_4;
	
	total=SUM(Sales_1, Sales_2, Sales_3, Sales_4);
	fired = "";
	IF name = "Greg" AND total => 52 THEN fired = "N";
	CARDS;
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
;
RUN;