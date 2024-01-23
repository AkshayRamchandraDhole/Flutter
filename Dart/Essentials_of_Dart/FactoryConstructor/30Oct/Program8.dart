
class Demo{
  static Demo obj1 = Demo();
  Demo(){
    print("In Constructor");
  }
  Demo fun(){
    return obj1;
  }
}
void main(){
  Demo d = Demo();
  d.fun();
  print(d.runtimeType);
 print(Demo.obj1.runtimeType);
}