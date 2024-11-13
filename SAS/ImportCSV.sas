DATA weightgain;
	INFILE "/home/u63805106/datasetslearnsas/weightgain (2).csv" DSD MISSOVER 
		FIRSTOBS=2;
	INPUT id source$ type$ weightg;
RUN;