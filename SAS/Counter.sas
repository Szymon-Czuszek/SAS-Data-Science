DATA studentscores;
	INPUT gender score;
	CARDS;
1 48
1 45
2 50
2 42
1 41
2 51
1 52
1 43
2 52
;
RUN;

PROC SORT DATA=studentscores;
	BY gender;
RUN;

DATA studentscores1;
	SET studentscores;
	count + 1;
	BY gender;

	IF first.gender THEN
		count=1;
RUN;