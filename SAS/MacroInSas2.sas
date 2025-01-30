DATA yr2005;
	INPUT name$ Sales;
	DATALINES;
Greg 10
John 15
Lisa 50
Mark 20
RUN;

DATA yr2006;
	INPUT name$ Sales;
	DATALINES;
Greg 15
John 35
Lisa 45
Mark 34
RUN;

DATA yr2007;
	INPUT name$ Sales;
	DATALINES;
Greg 67
John 34
Lisa 45
Mark 23
RUN;

DATA yr2008;
	INPUT name$ Sales;
	DATALINES;
Greg 54
John 32
Lisa 46
Mark 57
RUN;

DATA yr2009;
	INPUT name$ Sales;
	DATALINES;
Greg 77
John 45
Lisa 78
Mark 87
RUN;

DATA yr2010;
	INPUT name$ Sales;
	DATALINES;
Greg 99
John 87
Lisa 98
Mark 104
RUN;
	OPTIONS MPRINT MLOGIC;

	%MACRO AVERAGE;
		%DO i=2005 %TO 2010;

		PROC MEANS DATA=yr&i;
			VAR sales;
			TITLE "Average sales from &i";
		RUN;

	%END;
%MEND;

%AVERAGE;