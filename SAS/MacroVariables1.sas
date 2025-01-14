data policel;
	infile "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER 
		FIRSTOBS=2;
	input CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$
OutcomeT$;
run;

PROC PRINT DATA = policel(KEEP=CrimeID OBS = 10);
%LET site = NY;
TITLE "Revenues for &SITE Training Centre";
RUN;

%put _all_;