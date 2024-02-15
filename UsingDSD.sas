data guardians;
infile cards delimiter =',' dsd;
input first_name $ last_name $ height;
cards;
"Emma","Grey",32,156.2
"Ryan","Clay",45,172.5
"Ava","Loyd",27,145.3
"Jack","Bull",38,165.8
;
run;