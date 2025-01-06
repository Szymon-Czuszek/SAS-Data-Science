data policel;
	infile "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER 
		FIRSTOBS=2;
	input CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$
OutcomeT$;
run;

proc freq data=policel(keep=LSOAC);
proc datasets;
	modify policel;
	index create LSOAC/;
	run;

data usingindex;
	set policel;
	where LSOAC is missing;
run;

proc datasets;
	modify policel;
	index create compind=(CrimeID LSOAC) /;
	run;