data individual_info;
input forename :$10. surname $13. 
      #2 gender $ #3 years mass;
cards;
Alice       White		 
F
35 110.2
Michael     Brown
M 
42 155.8
Emily       Green
F 
27 125.4
David       Jones 
M 
51 180.6
;
run;