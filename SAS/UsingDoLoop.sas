DATA numeric_data;
	DO index = 1 TO 10;
		x_value = index;
		y_value = index;
		OUTPUT;
	END;
	DROP index;
RUN;