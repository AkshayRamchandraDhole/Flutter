
mixin Demo1{
  void fun1(){
    print("In fun1-Demo1");
  }
  void fun2();
}
mixin Demo2{
  void fun2(){
    print("In fun2-Demo2");
  }

}
class DemoChild with Demo1,Demo2{

}
void main(){
  DemoChild d = DemoChild();
  d.fun1();
  d.fun2();
}