// We can not create objects for mixins class

mixin Demo1{
  void fun1(){
    print("In fun1-Demo1");
  }
  void fun2();
}
void main(){
  Demo1 d = Demo1();
}
