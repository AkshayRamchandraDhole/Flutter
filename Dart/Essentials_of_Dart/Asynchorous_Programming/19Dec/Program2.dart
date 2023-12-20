Future<String> getOrderMessage() async {
	
	var order = await getOrder();
	return "Your order is $order";
}

Future<String> getOrder(){

	return  Future.delayed(Duration(seconds:5),()=>"Burger");
}

Future<void> main() async{

	print("Start");
	print(await getOrderMessage());
	print("End");
}
