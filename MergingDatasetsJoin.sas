DATA class_weight;
INPUT name $ gender $ age weight;
CARDS;
John M 48 128.6
Peter M 58 158.3
Liz F . 115.5
Joe M 28 170.1
Pat F 34 134.2
Mike M 34 201.1
;
RUN;
DATA class_height;
INPUT name $ height;
CARDS;
John 165
Peter 155
Liz 176
Joe 152
Tom 100.1
;
RUN;
PROC SORT DATA=class_weight;
BY name;
PROC SORT DATA=class_height;
BY name;
RUN;

DATA class_merged;
MERGE class_weight (IN=a) class_height (IN=b);
BY name;
IF a AND b;
RUN;