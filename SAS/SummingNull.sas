DATA testdata;
	INPUT first_name $ salary bonus;
	CARDS;
	Alice 55000 500
	Bob 63000 700
	Emma 42000 400
	David 72000 .
	;
RUN;

DATA testdata1;
	SET testdata;
	netsal=salary + bonus;
RUN;

DATA testdata2;
	SET testdata;
	netsal=SUM(salary, bonus);
RUN;