import 'dart:io';
void main() async{

	File f = new File('c2w.txt');
	f.create();
	print(f.absolute);
	print(f.path);
	
	print(f.lastAccessed()); // Instance of 'Future<DateTime>'
	print(f.lastModified()); // Instance of 'Future<DateTime>'

	print(f.length()); // Instance of 'Future<int>'
	print(f.exists()); // Instance of 'Future<bool>'

	//Async1
	final data = await f.length();
	print(data);
	
	//Async2
	final value = f.length();
	value.then((val)=>print(val));

	print(f.lastModifiedSync());
	print(f.lastAccessedSync());

}
