DATA sales;
	INPUT Name$ Sales_1-Sales_4;
	total=SUM(Sales_1, Sales_2, Sales_3, Sales_4);
	fired = "";
	IF name = "Greg" AND total => 52 THEN fired = "N";
	CARDS;
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
;
RUN;