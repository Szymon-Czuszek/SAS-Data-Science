data yr2005;
	input name$ Sales;
	datalines;
Greg 10
John 15
Lisa 50
Mark 20
run;

data yr2006;
	input name$ Sales;
	datalines;
Greg 15
John 35
Lisa 45
Mark 34
run;

data yr2007;
	input name$ Sales;
	datalines;
Greg 67
John 34
Lisa 45
Mark 23
run;

data yr2008;
	input name$ Sales;
	datalines;
Greg 54
John 32
Lisa 46
Mark 57
run;

data yr2009;
	input name$ Sales;
	datalines;
Greg 77
John 45
Lisa 78
Mark 87
run;

data yr2010;
	input name$ Sales;
	datalines;
Greg 99
John 87
Lisa 98
Mark 104
run;
	options mprint mlogic;

	%macro average;
		%do i=2005 %to 2010;

		proc means data=yr&i;
			var sales;
			title "Average sales from &i";
		run;

	%end;
%mend;

%average