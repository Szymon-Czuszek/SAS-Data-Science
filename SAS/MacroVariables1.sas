DATA policel;
	INFILE "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER 
		FIRSTOBS=2;
	INPUT CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$
OutcomeT$;
RUN;

PROC PRINT DATA=policel(KEEP=CrimeID OBS=10);
	%LET site = NY;
	TITLE "Revenues for &SITE Training Centre";
RUN;

%PUT _all_;