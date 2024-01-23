
class Demo{
  static Demo obj1 = Demo();
  Demo obj2 = Demo();

  Demo(){
    print("In Constructor");
  }
}
void main(){
  Demo d = Demo();
}