data custom_dataset;
input region $ @;
input first :$10. last :$13. sex $ years mass;
if region ='Midwest' then delete;
cards;
Midwest
John        Doe          M 35 150.2
East
Jane        Smith        F 42 130.8
West
Michael     Johnson      M 28 170.5
South
Emily       Brown        F 38 140.3
;
run;