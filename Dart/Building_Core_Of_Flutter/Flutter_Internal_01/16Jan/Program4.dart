class Demo{
  Demo(){
    print("In Demo Constructor");
  }
  void fun(){
    print("In Fun method");
  }
}
Demo objFun(){
  print("In objFun function");
  return Demo();
}
void main(){
  Demo obj = objFun();
  obj.fun();
}