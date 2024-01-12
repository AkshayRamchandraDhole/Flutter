import 'dart:io';
void main() async{

	File f1 = new File("c2w.txt");
	
	f1.writeAsStringSync("Welcome to Akola");
	print("write");

	f1.writeAsStringSync(" Course : Flutter");
	print("Write");
	
	f1.writeAsStringSync(" Dart Programming", mode:FileMode.append);
}
