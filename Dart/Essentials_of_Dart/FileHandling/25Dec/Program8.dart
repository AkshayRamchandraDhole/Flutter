// Delete File
import 'dart:io';
void main() async{

	File f1 = new File('C2W.txt');
	
	if(f1.existsSync()){
		f1.delete();
		print("File Deleted");

	}else{
		print("File Not Found");
	}
}

