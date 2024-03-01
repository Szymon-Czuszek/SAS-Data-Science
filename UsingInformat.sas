DATA employee_bonuses;
INPUT employee_name $ bonus_amount  date_of_birth  ;
INFORMAT bonus_amount dollar5. date_of_birth date7.;
CARDS;
Adam $5500 20Apr80 
Sophia $1200 01Mar92
Emma $6750 24Oct76
James $4560 17Dec87
;
RUN;