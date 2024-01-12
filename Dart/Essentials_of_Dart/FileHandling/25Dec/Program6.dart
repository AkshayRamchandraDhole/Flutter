import 'dart:io';
void main() async{

	File f1 = new File("c2w.txt");
	File f2 = new File("xyz.txt");

	f1.copySync(f2.path);

	f1.renameSync(f2.path);

	String data = f2.readAsStringSync().substring(0,8);
	print(data);
}
