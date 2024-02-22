DATA text_processing;
	a = '     United     States   of    America   ';
	b = COMPRESS(a);
	c = COMPBL(a);
RUN;