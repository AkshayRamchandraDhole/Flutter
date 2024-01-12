import 'dart:io';
void main() async{

	File f = new File('c2w.txt');
	
	String str = f.readAsStringSync();
	print(str);
	
	String str1 = await f.readAsString();
	print(str1);

	Future<String> str2 = f.readAsString();
	str2.then((val)=>print(val));
}
