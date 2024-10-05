DATA _NULL_;
	a = 3;
	b = -7;
	
	PUT a = ;
	
	c = ABS(B);
	PUT c = ;
RUN;

DATA _NULL_;
	a = 5.7;
	b = CEIL(a);
	c = FLOOR(a);
	d = INT(a);
	
	PUT a = b = c = d =;
RUN;

DATA _NULL_;
	a = 2;
	b = 5;
	c = .;
	
	d = MIN(a, b, c);
	e = MAX(a, b, c);
	PUT d = e = ;
RUN;