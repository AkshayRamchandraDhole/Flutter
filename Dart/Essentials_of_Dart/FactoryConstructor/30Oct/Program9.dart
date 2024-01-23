
class Demo{
  static Demo obj1 = Demo();
  Demo Demo(){
    print("In Constructor");
    return obj1;
  }
  Demo fun(){
    return obj1;
  }
}
void main(){
  Demo d = Demo();
}