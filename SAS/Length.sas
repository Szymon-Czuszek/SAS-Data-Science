DATA mydata;
	LENGTH age 3 sex$6 children 3 smoker$3 region$15 charges 8;
	INFILE "/home/u63805106/datasetslearnsas/insurance (1).csv" DSD MISSOVER FIRSTOBS=2;
	INPUT age sex$ bmi children smoker$ region$ charges$;
RUN;