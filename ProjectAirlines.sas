/* Here is a dataset  (as downloadable resource) with name airlines.txt containing data about various American airline carriers. */
FILENAME my_data '/home/u62422869/The Simplest Guide to SAS/airlines.txt';

/* If Totalopcost is this range, then assign RATING as ...
<50 --> 5
50 to 100 --> 4
100 to 150 --->3
150 to 200 ---> 2
>200 ---> 1 */
PROC FORMAT;
	VALUE RATING low-50=5 50-100=4 100-150=3 150-200=2 200-high=1;
RUN;

DATA AIRLINES;
	INFILE my_data;

	/* 1. Using COLUMN Input you will have to import the data from Txt file using the following variable names (or any other names you like).
	The data in the txt file are aligned in columns with starting and ending characters as listed below after the variable names.
	Use these in the INPUT statement in your SAS Code. */
	INPUT Airline $1-20 Length 22-28 Speed 30-36 Dailyflighttime 38-44 
		Populationserved 46-52 TotalopCost 54-60 Revenue 62-68 Loadcap 70-76 
		Availablecap 78-84 Totalassets 86-92 Investmentsfunds 94-100 Adjustedassets 
		102-108;

	/* 2. In the imported SAS dataset, apply the dollar format to all variables that are currency variables (Eg. Total Assets). A sample value after applying the format should look like $1,271.32. */
	FORMAT Totalassets dollar10.2 Investmentsfunds dollar10.2 Adjustedassets 
		dollar10.2;

	/* 3. Create a new variable called RATING based on the variable TotalOpCost (cents per revenue ton-mile) using the logic above. */
	RATING=PUT(Totalopcost, RATING.);
RUN;

PROC CHART DATA=AIRLINES;
	/* 4. Create a vertical bar chart to plot using the variable you just created ie. RATING. */
	VBAR RATING / DISCRETE;

	/* 5. Create a horizontal bar chart to find out what is the Average Operating Cost (from variable TotalOpCost) for the highest rated airlines. */
	HBAR RATING / SUMVAR=Totalopcost TYPE=MEAN;
RUN;

PROC SQL;
	/* 6. Create a subset of this data with only those airlines whose name start with the letter 'P'. */
	CREATE TABLE
		Subset AS
			SELECT
				*
			FROM
				WORK.AIRLINES
			WHERE
				SUBSTR(Airline, 1, 1)='P';
QUIT;

PROC SQL;
	/* 7. Using Proc SQL, create a macro variable called FASTPLANE containing the name of the airline that flies their planes at the highest speed (use variable SPEED from the dataset). */
	SELECT
		MAX(speed)
	INTO
		:FASTPLANE
	FROM
		AIRLINES;
QUIT;

%PUT MACRO VARIABLE FASTPLANE IS EQUAL TO &FASTPLANE;

/* Project completion questions:
- What is the code you will use to import this data into SAS (use Filename Statement, infile, and input statements)
PROC FORMAT;

	VALUE RATING low-50=5 50-100=4 100-150=3 150-200=2 200-high=1;

RUN;

FILENAME my_data '/home/u62422869/The Simplest Guide to SAS/airlines.txt';

DATA AIRLINES;

	INFILE my_data;

	INPUT Airline $1-20 Length 22-28 Speed 30-36 Dailyflighttime 38-44 

		Populationserved 46-52 TotalopCost 54-60 Revenue 62-68 Loadcap 70-76 

		Availablecap 78-84 Totalassets 86-92 Investmentsfunds 94-100 Adjustedassets 

		102-108;

	FORMAT Totalassets dollar10.2 Investmentsfunds dollar10.2 Adjustedassets 

		dollar10.2;

	RATING=PUT(Totalopcost, RATING.);

RUN;

- What format did you use to display the currency variables ?
dollar10.2

- Which function did you use for choosing those airlines that start with letter 'P'?
PROC SQL;
	CREATE TABLE
		Subset AS
			SELECT
				*
			FROM
				WORK.AIRLINES
			WHERE
				SUBSTR(Airline, 1, 1)='P';
QUIT;

- What option will you use in the Proc Chart procedure for creating the vertical bar for variable RATING? Note RATING is a numeric categorical variable.
DISCRETE

- How many airlines are rated 5 from the chart output you got?
7

- What is the mean operating cost of airlines that are rated 5? Submit your SAS code you wrote to find this result.
43.7857

- What is the highest speed at which an airline has flown their planes? i.e what is the value of FASTPLANE macro variable.
216

- What is the code you used for the  SQL code to create the macro variable FASTPLANE?
PROC SQL;
	SELECT
		MAX(speed)
	INTO
		:FASTPLANE
	FROM
		AIRLINES;
QUIT;

%PUT MACRO VARIABLE FASTPLANE IS EQUAL TO &FASTPLANE;

*/