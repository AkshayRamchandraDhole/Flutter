mixin DemoParent{
  void m1(){
    print("In m1-demoParent");
  }
}
class Demo{
  void m2(){
    print("In m2-Demo");
  }
}
class DemoChild extends DemoParent , Demo{

}
void main(){

}