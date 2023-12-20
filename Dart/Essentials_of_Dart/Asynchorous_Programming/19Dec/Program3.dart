Future<void> getOrder(){

	return  Future.delayed(Duration(seconds:5),()=>throw Exception("No Burger"));
}

void main(){

	print("Start");
	getOrder();
	print("End");
}
