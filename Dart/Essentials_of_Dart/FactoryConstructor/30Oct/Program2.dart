class Demo{
  Demo._private(){
    print("In Constructor");
  }
  factory Demo(){
    print("In factory constructor");
    return Demo._private();
    //return this;
  }
  void fun(){
    print("In fun");
  }
}