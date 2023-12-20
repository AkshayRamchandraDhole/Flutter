// async

void main(){

	
	print("Statement1");
	print("Statement2");

	//Future.delayed(Duration(seconds:5));
	
	//Future.delayed(Duration(seconds:5),()=>print("Statement2.5"));
	
	Future.delayed(Duration(seconds:5),()=>print(getName()));
	
	print("Statement3");
	print("Statement4");
}

String getName(){

	return "Virat";
}
