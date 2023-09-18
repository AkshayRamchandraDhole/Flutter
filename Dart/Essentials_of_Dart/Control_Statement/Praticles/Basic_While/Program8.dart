void main(){

	print("WAP to print a product of odd digitd between 10 to 1");
	int i=10;
	int pro=1;
	while(i>=1){
		if(i %  2 !=0)
			pro*=i;	
	i--;
	}
	print("Product is:");
	print(pro);
}
