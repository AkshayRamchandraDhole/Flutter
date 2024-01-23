abstract class Demo1{
  void fun1(){
    print("In fun1-demo1");
  }
  void fun2();
}
abstract class Demo2{
  void fun3(){
    print("In fun3-demo2");
  }
  void fun4();
}
class DemoChild implements Demo1,Demo2{
  void fun2(){
    print("In DemoChild-fun2");
  }
  void fun4(){
    print("In DemoChild-fun4");
  }
   
}

void main(){
  DemoChild d = DemoChild();
  d.fun2();
  d.fun4();
}