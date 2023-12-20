void fun1(){

	for(int i=0;i<3;i++)
		print("in Fun1");
}
void fun2(){

	for(int i=0;i<3;i++)
		print("in Fun2 for loop1");
	
	//Future.delayed(Duration(seconds:5),()=>print("in fun2"));

	for(int i=0;i<3;i++)
		print("In Fun2 for loop2");
}
void main(){

	print("Start Main");
	fun1();
	Future.delayed(Duration(seconds:5),()=>print("delayed"));
	fun2();
	print("End Main");
}
