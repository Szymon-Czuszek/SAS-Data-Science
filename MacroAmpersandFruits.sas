%LET apple = banana;
%LET banana = cherry;
%LET cherry = plum;
%LET plum = elderberry;

%PUT ------> &apple;
%PUT ------> &&apple;
%PUT ------> &&&apple;
%PUT ------> &&&&apple;
%PUT ------> &&&&&apple;
%PUT ------> &&&&&&apple;
%PUT ------> &&&&&&&apple;
%PUT ------> &&&&&&&&apple;
%PUT ------> &&&&&&&&&&&&&&&apple;