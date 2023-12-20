// return value
Future<String> getOrder(){

	return Future.delayed(Duration(seconds:5),()=>"Burger");
}
void main(){

	print("Start");
	var order = getOrder();
	order.then((val)=>print(val));
	print("End");
}
