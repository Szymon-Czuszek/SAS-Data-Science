data employees;
infile cards delimiter =',';
input name $ gender $ age weight;
cards;
Alice,F,35,110.2
Michael,M,42,155.8
Emily,F,27,125.4
David,M,51,180.6
;
run;