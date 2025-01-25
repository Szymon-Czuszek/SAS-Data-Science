DATA sales;
	INPUT unit_price;
	DATALINES;
2.55
3.39
2.75
3.39
3.39
7.65
4.25
1.85
1.85
1.69
2.1
2.1
3.75
1.65
4.25
4.95
9.95
5.95
5.95
7.95
7.95
4.25
4.95
4.95
4.95
5.95
3.75
3.75
3.75
0.85
0.65
0.85
1.25
2.95
;
RUN;

%MACRO dailyreport;
	PROC MEANS DATA=sales SUM;
		TITLE "Daily Report";
	RUN;

%MEND;

%MACRO Thursday;
	PROC MEANS DATA=sales SUM MIN MAX STD;
		VAR unit_price;
		TITLE "Wednesday Sales Report";
	RUN;

%MEND;

%MACRO reportcondition;
	%dailyreport;

	%IF &sysday=Thursday %THEN
		%Thursday;
%MEND;

%reportcondition