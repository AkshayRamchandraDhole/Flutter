import 'dart:io';

void main(){

	File f = new File("C2W.txt");
	print(f);
	print(f.runtimeType);
	f.create();
	//f.createSync();
	print("File Created");
}
