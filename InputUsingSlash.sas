DATA personal_data;
INPUT first_name :$10. last_name $13. 
      / sex $ years mass;
CARDS;
Alice       White		 
F 35 110.2
Michael     Brown
M 42 155.8
Emily       Green
F 27 125.4
David       Jones 
M 51 180.6
;
RUN;