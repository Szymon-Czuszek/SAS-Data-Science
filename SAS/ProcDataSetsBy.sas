data policel;
	infile "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER 
		FIRSTOBS=2;
	input CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$
OutcomeT$;
run;

proc datasets;
	modify policel;
	index create LSOAC/;
	run;
	options msglevel=I;

data useindexby;
	set policel;
	by LSOAC;
run;