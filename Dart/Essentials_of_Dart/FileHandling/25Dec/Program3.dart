import 'dart:io';
void main() async{

	File f = new File('akshay.txt');
	print(f.runtimeType);
	
	//print(f.create());
	await f.create();

	print("File Created");
}
