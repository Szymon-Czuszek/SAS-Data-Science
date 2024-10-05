/* 1. Using the dataset SASHELP.CARS, create a vertical bar chart
on the variable MAKE so that the mean MSRP of the cars in various MAKEs is shown on the bar chart.

2. From the results obtained, find the car that has the maximum Mean MSRP. */

PROC CHART DATA=SASHELP.CARS;
	VBAR Make / SUMVAR=MSRP TYPE=mean;
RUN;