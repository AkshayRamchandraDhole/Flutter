mixin Demo1{
  int x = 10;
  void fun1(){
    print("In fun1-Demo1");
  }
  void fun2();
}
class DemoChild extends Demo1{
  void fun2(){
    print("In DemoChild-fun2");
    print("$x");
  }
}
void main(){
  DemoChild d = DemoChild();
  d.fun1();
  d.fun2();
}