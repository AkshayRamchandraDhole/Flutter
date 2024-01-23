class Demo{
  static int x = 10;
  int y = 20;
  Demo(){
    print("In Constructor");
  }
  static void m1(){
    print(x);
  }
  void m2(){
    print(y);
  }
}
void main(){
  Demo d = Demo();
  Demo.m1();
  d.m2();
}