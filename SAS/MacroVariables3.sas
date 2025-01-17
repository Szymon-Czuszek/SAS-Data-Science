DATA policel;
	INFILE "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER 
		FIRSTOBS=2;
	INPUT CrimeID$ ReportedF$ FallsW$ Longitude Latitude Location$ LSOAC$ LSOAN$
OutcomeT$;
RUN;

%LET name = Bill Fisher;
%LET name2 = " Bill Fisher";
%LET title = "Bill Fisher's Report";
%LET start = ;
%LET total = 0;
%LET sum = 4 + 3;
%LET sumtotal = &total + &sum;
%put _all_;