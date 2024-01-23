//Named Constructor
class Demo{
  int? x;
  String? str;
  Demo(){
    print("Normal Constructor");
  }
  Demo.one(){
    print("Named Constructor1");
  }
  Demo.two(){
    print("Named Constructor2");
  }
}
void main(){
  Demo();
  Demo.one();
  Demo.two();
}