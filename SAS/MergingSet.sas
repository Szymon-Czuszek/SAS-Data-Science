DATA sales1;
	INPUT Name$ Sales_1-Sales_4;
	total=SUM(Sales_1, Sales_2, Sales_3, Sales_4);
	CARDS;
Greg 10 2 40 0
John 15 5 10 100
Lisa 50 10 15 50
Mark 20 0 5 20
;
RUN;

DATA sales2;
	INPUT Names$ Sales_1-Sales_4;
	total=SUM(Sales_1, Sales_2, Sales_3, Sales_4);
	CARDS;
Eric 17 5 40 0
Lori 15 12 10 100
Bill 50 14 15 50
Mark 22 3 5 16
;
RUN;

DATA salesmerged;
	SET sales1 sales2(RENAME=(Names=Name));
RUN;