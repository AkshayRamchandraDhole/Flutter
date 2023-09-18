// function : name argument

void fun({String ? name, double ? sal}){

	print("in fun");
	print(name);
	print(sal);
}
void main(){

	print("funciton : name argument");
	print("Start main");
	fun(name : "Kanha", sal : 10.8);
	print("End main");

}
