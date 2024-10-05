/* 1. Using the dataset SASHELP.CARS, create a report output that looks like the following report.

2. Create two additional columns in the report
a. Sum Retail Price : It is the sum of MSRP of all cars in that Make, Type and Origin
b. Mean Retail Price: It is the average of MSRP of all cars in that Make, Type and Origin */

PROC REPORT DATA=sashelp.cars;
	COLUMN make type origin msrp msrp=meanmsrp;
	DEFINE make/ DISPLAY WIDTH=20 GROUP;
	DEFINE type/ DISPLAY WIDTH=10 GROUP;
	DEFINE origin/ GROUP;
	DEFINE msrp/ ANALYSIS SUM "Sum retail price";
	DEFINE meanmsrp/ ANALYSIS MEAN "Mean retail price";
RUN;