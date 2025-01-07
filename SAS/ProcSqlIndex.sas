data policel;
    infile "/home/u63805106/datasetslearnsas/londonoutcomes.csv" DSD MISSOVER 
        FIRSTOBS=2;
    input CrimeID $ ReportedF $ FallsW $ Longitude Latitude Location $ LSOAC $ LSOAN $ OutcomeT $;
run;

* Create a simple index on the LSOAC variable;
proc sql;
    create index LSOAC on policel;
quit;

/* Note: Adding the UNIQUE option ensures the values of LSOAC must be unique for the index to be created. 
Example: create unique index LSOAC on policel; */

* Create a composite index named compind on CrimeID and LSOAC variables;
proc sql;
    create index compind on policel(CrimeID, LSOAC);
quit;
