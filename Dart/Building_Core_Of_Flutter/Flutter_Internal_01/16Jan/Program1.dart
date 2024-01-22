class Demo{

	Demo(){
		print("In Demo Constructor");
	}
	void fun(){
		print("In fun Method");
	}
}
void objFun(Demo obj){

	print("In objFun Function");
	obj.fun();
}
void main(){

	Demo obj = Demo();
	objFun(obj);
}
