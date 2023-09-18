/*
	type checking operator (as , is , is!)
*/

void main(){
	
	print("type checking operator (as,is,is!)");
	int x = 10;
	double y = 20.5;
	num z = 30;
	
	print(x.runtimeType); // int
	print(y.runtimeType); // double
	print(z.runtimeType); // int 

	
	print(x is int); // true
	print(y is int); // false
	print(z is! int);// false
	print(x is num); // true
}

