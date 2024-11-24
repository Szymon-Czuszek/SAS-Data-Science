DATA newhomes;
	INPUT x$ y z;
	DATALINES;
Duplex 150000 0.15
Duplex 160000 0.18
Duplex 180000 0.15
;
RUN;

DATA cleannewhomes;
	SET newhomes;
	RENAME x=type y=price z=tax;
RUN;

DATA cleannewhomes;
	SET cleannewhomes;
	LABEL type='Type of Home' price='Price of Home' tax='Percentage of Home';
RUN;

PROC FREQ DATA=cleannewhomes;
	TABLE type price tax;
RUN;