/*

Creating a Macro
1st option

*/
DATA houseprice;
	INPUT type$ price tax;
	DATALINES;
Single 300000 0.20
Single 250000 0.25
Duplex 175000 0.15
;
RUN;

%MACRO somestats;
	proc means;
	RUN;

%MEND;

RUN;
%somestats;

%Macro newstats (PROG, VARS);
	RUN;
%MEND;

%newstats (MEANS, price tax);
%newstats (Univariate, price);