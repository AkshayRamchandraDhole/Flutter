mixin DemoParent{
  void m1(){
    print("In m1-DemoParent");
  }
}
mixin Demo{
  void m2(){
    print("In m2-Demo");
  }
}
 class DemoChild with Demo,DemoParent{

 }
 void main(){
  DemoChild d = DemoChild();
  d.m1();
  d.m2();
 }