void main(){

	int num = 1234;
	int evenSum = 0;

	while(num!=0){
		
		int rem = num % 10;

			if(rem % 2 == 0){
				evenSum = evenSum + rem;
			}
		
		num = num ~/ 10;
	
	}

	print("EvenSum is $evenSum");
}
