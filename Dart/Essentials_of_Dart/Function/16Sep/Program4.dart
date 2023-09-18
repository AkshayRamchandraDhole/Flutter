// Function with optional parameter with default value

void fun(String name, [double sal=20.90]){
	
	print("In fun");
	print(name);
	print(sal);
}
void main(){

	print("Function : optional parameter with default value");
	print("start main");
	fun("Kanha");
	print("end main");
}
