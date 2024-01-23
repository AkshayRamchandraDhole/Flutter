class Demo{
  static Demo obj1 = Demo();

  Demo Demo(){
    print("Constructor");
    return obj1;
  }
}
void main() => Demo();