%LET b = 10;

%LET a = b;

%PUT ---> &b;
%PUT ---> &a;
%PUT ---> &&a;
%PUT ---> &&&a;