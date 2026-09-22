/*============================================================================*/
/* STEP 1: Create the COUNTRY_DATA dataset                                   */
/*============================================================================*/

DATA country_data;
	a = '     United     Kingdom   of    Great    Britain   ';
	country = SCAN(a, 4);
RUN;