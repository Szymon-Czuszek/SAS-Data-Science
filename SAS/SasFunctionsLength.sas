DATA lengthfunctions;
one = "ABC       ";
two = " ";
three = "ABC   XYZ";
length_one = length(one);
lengthn_one = lengthn(one);
lengthc_one = lengthc(one);
length_two = length(two);
lengthn_two = lengthn(two);
lengthc_two = lengthc(two);
length_three = length(three);
lengthn_three = lengthn(three);
lengthc_three = lengthc(three);
RUN;

PROC PRINT DATA = lengthfunctions;
TITLE "Length(n)(c) Function Examples";
RUN;
