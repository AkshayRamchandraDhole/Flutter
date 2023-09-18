

// IF ELSE LADDER Statement

void main(){

	print("IF ELSE LADDER Statement Code");
	int drPerDayFee = 3500;

	if(drPerDayFee >= 9000)
		print("ICU");
	else if(drPerDayFee >= 7000)
		print("DLX Room");
	else if(drPerDayFee >= 5000)
		print("LX Room");
	else if(drPerDayFee >= 3000)
		print("Special Room");
	else
		print("General Ward");
	print("End main");
}
