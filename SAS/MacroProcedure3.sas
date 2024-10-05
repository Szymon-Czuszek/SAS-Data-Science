%LET a = United States;

%LET b = %UPCASE(&a);

%PUT ----> &b;

%LET c = %LOWCASE(&a);

%PUT ----> &c;

%LET d = %SUBSTR(&a, 1,6);

%PUT ----> &d;

%LET e = %LENGTH(&a);

%PUT ----> &e;


%LET x = 3.5;
%LET y = 5.2;

%LET z = %SYSEVALF(&x + &y);

%PUT ------> &z;