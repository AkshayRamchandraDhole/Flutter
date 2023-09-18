void main(){
	
	print("Write a program to calculate electricity bill of a house based");
	var num=120;
	if(num <= 90){
			print("No charges");
	}else if (num >= 91 && num <= 180 ){
			print("Your unit is between 91 and 180 so charges is : ");
			print(6 * num);
	}else if (num >= 181 && num <= 250 ){
			print("Your units is between 181 and 250 so charges is : ");
			print(10 * num);
	}else if (num >= 251){
			print("Your units is greater than 251 so charges is : ");
			print(15 * num);
	}
}
