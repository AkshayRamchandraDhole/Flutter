class Demo{
	Demo(){
		print("In Demo Constructor");
	}
	void fun(){
		print("In fun method");
	}
}
void objFun(Demo obj){
	print("In objFun function");
  obj.fun();
}
