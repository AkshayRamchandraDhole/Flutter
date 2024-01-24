class InterfaceDemo1{
  void m1(){
    print("In m1-interfacedemo2");
  }
}
class InterfaceDemo2{
  void m1(){
    print("In m1-interfacedemo2");
  }
}
class Demo implements InterfaceDemo1, InterfaceDemo2{
  void m1(){
    print("In m1");
  }
}
void main(){
  Demo d = Demo();
  d.m1();
}