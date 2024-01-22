class Demo{
   int? x;
   String? str;
  Demo(int x, String str){
    print("In Demo Constructor");
    this.x=x;
    this.str=str;
  }
  void fun(){
    print("In Fun method");
  }
}
Demo objFun(){
  print("In objFun function");
  return Demo(10,"Kanha");
}
void main(){
  Demo obj = objFun();
  obj.fun();
}