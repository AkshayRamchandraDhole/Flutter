
class Demo{
 Demo(){
    print("In Constructor");
    
  }
  factory Demo(){
    print("In Factory");
    return 10;
  }
}
void main(){
  Demo d = Demo();
}