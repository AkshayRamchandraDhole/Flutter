class Demo{
  static Demo obj = new Demo._private();

  Demo._private(){
    print("In Constructor");
  }

  static Demo getInstance(){
    return obj;
  }
  /*
  factory Demo (){
    return obj;
  }
  */
}
