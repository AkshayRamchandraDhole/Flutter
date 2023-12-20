import "dart:io";
Future<String?> placeOrder() async{
	
	print("Enter your order:");
	String? ord = await stdin.readLineSync();
	return ord;
}
Future<String?> getOrderMessage() async{ 
	
	var order = await getOrder();
	return "Your order is $order";
}

Future<String?> getOrder(){

	return  Future.delayed(Duration(seconds:5),()=>placeOrder());
}

void main() async{

	print("Start");
	print(await getOrderMessage());
	print("End");
}
