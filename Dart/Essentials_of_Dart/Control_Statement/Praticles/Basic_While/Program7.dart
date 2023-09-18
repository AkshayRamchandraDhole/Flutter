void main(){

	print("WAP to print a square of odd digits and cube of even digitd between 40 to 50");
	int i=40;
	while(i<=50){
		if(i % 2 != 0)
			print(i*i);
		else
			print(i*i*i);	
	i++;
	}
}
