class Demo{
  static Demo d = Demo();
  Demo(){
    print("Constructor");
  }
}
void main() => print(Demo.d);