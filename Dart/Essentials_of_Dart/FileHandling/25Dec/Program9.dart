import 'dart:io';
void main(){

	Directory dir = new Directory("Dart");
	dir.create();

	print(dir.path);
	print(dir.absolute);

	dir.delete(recursive:true);
}
