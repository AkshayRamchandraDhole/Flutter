// We can not create objects for mixins class
/*
  By Default mixin class is abstract when you write explicitly abstract keyword then it becomes :

      abstract abstract class Demo{

      }

    Therefore we can't write constructor or create object of mixin class  
*/ 

mixin Demo1{
  Demo1(){
    print("In Constructor");
  }
  void fun1(){
    print("In fun1-Demo1");
  }
  void fun2();
}
void main(){
  Demo1 d = Demo1();
}
