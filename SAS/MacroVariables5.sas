DATA policel;
	INFILE "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER 
		FIRSTOBS=2;
	INPUT CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$
OutcomeT$;
RUN;

%LET a=a very long value;
%LET b=%INDEX(&a, v);
%PUT The character v appears at position &b.;