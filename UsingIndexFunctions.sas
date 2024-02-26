DATA country_info;
	a = '     United     Arab   Emirates   ';
	b = INDEXC(COMPRESS(a), "A");
	c = INDEXW(a, "Emirates");
RUN;