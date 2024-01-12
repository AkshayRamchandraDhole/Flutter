Function Outer(){

	void Inner(){
		print("In Inner Function");
	}
	return Inner;
}

class Demo{

	int x = 10;
	void fun(){

	}
}
void main(){

	print("In Main");
	//Outer();
	Function ret = Outer();
	ret();

	Demo obj = new Demo();
	print(obj.fun.runtimeType);
	//print(obj.runtimeType);

	print(Outer.runtimeType);
	
}
