/* Here is what you have...

You have data of students (in Excel sheets) from two different classes
(STAT for Statistics and HIST for History) containing their weights data.
There is a separate dataset called STUHT (Student Height) containing heights
data of all those students from the two classes STAT.

(the data is in a zip file. First download to a folder on your computer, then extract it
by right-clicking and choosing "extract". Then follow the steps to import
into SAS as discussed below)

After you have downloaded and installed the SAS University Edition on your computer, your tasks are as follows:
- Import the data from Excel sheets into SAS (using SAS import wizard or Proc Import)
- Stack data from STAT and HIST (you can use either the data step or Proc Append)

Merge with the STUDHT dataset (you can use either the data step or Proc SQL)

Convert the weight and height into Metric system units using the following formulae:

Weight (in US-pounds (lbs)) multiplied by 0.454 is Weight (in Kilograms (kgs))

Height (in inches) multiplied by 2.54/100 is Height in Meters

Create a variable called BMI from their weight and heights using the formula:

BMI = weight in kilograms / square of the height in meters

Apply conditional logic to create a 'STATUS' variable assigning if the students are
Underweight, Healthy, Overweight or Obese based on the following criteria:
- Underweight, if BMI is less than 18
- Healthy, if BMI is great than or equal to 18 and less than 20
- Overweight, if BMI is great than or equal to 20 and less than 22
- Obese, if BMI is great than or equal to 22

Final step is to generate the pie chart on the variable STATUS. The output should look like this.


DELIVERABLE

Analyze the data from a pie chart and shows the percentage of students in each of
the categories of Underweight, Healthy, Overweight and Obese */
%MACRO MyImport(file);
	FILENAME MyExcel "/home/u62422869/The Simplest Guide to SAS/&file..xlsx";

	PROC IMPORT DATAFILE=MyExcel DBMS=xlsx OUT=&file REPLACE;
		GETNAMES=yes;
	RUN;

%MEND;

%MyImport(STAT);
%MyImport(HIST);
%MyImport(STUDHT);

PROC FORMAT;
	VALUE bmi low-18='Underweight' 18-20='Healthy' 20-22='Overweight' 
		22-high='Obese';
RUN;

DATA CLASS;
	LENGTH name $5;
	SET STAT HIST;
RUN;

DATA CLASS;
	SET CLASS;
	MERGE CLASS STUDHT;
	Weightkg=weight*0.453592;
	heightm=height*2.54/100;
	bmi=weightkg/ (heightm*heightm);
	status=PUT(bmi, bmi.);
RUN;

PROC CHART DATA=CLASS;
	PIE status;
RUN;

/*

Obese = 15.38%

Overweight = 38.46%

Healthy = 23.08%

Underweight = 23.08%


Using the Students Health data (HIST, STAT, STUDHT datasets), you will have to do the following:

Create a frequency distribution table of the gender and status variables, and save the output in a dataset.

Concatenate the count and percentage variables to obtain final reportable values. The values should be formatted precisely in this format, where xx is the count and yy.yy is the percentage ----> xx (yy.yy%)

Transpose the dataset in such a way that the STATUS variable is transposed across the table.

Create a final report with the title "Report of Frequency Table" and the summary statistics obtained by above. The final report should look like this.
*/
%MACRO myStat(var1, var2);
	/*Step 1: Creating the freq. distribution table*/
	PROC FREQ DATA=CLASS;
		TABLES &var1*&var2 / OUT=myFreqtable NOROW NOCOL NOPERCENT;
	RUN;

	/*Step 2: format report values*/
	DATA myfreqtable1;
		SET myfreqtable;
		value=CAT(count, '(', ROUND(percent, .01), '%)');
		DROP count percent;
	RUN;

	/*Step 3: transpose origin var*/
	PROC TRANSPOSE DATA=myFreqtable1 OUT=t_myfreq;
		BY &var1;
		ID &var2;
		VAR value;
	RUN;

	TITLE 'Report of Frequency Table';

	PROC PRINT DATA=t_myfreq (DROP=_name_);
	RUN;

%MEND;

%myStat(gender, status);

/*
Obs	gender	Healthy		Overweight	Underweight	Obese
1	F		1(7.69%)	2(15.38%)	1(7.69%)
2	M		2(15.38%)	3(23.08%)	2(15.38%)	2(15.38%)
*/

%myStat(status, gender);

/*
Obs	status		F			M
1	Healthy		1(7.69%)	2(15.38%)
2	Obese	 	2(15.38%)
3	Overweight	2(15.38%)	3(23.08%)
4	Underweight	1(7.69%)	2(15.38%)
/*