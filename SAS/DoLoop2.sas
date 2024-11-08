DATA A;
	INPUT years;
	DATALINES;
4
3
6
3
9
;
RUN;

DATA B;
	SET A;

	IF years > 5 THEN
		DO;
			months=years * 12;
			PUT years=months=;
		END;
	ELSE
		yrsleft=5-years;
RUN;