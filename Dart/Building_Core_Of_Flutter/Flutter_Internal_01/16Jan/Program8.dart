class Demo{
  void data(){
    print("In Data");
  }
  void career(){
    print("ER/DR/Adv");
  }
}
class DemoChild extends Demo{
  @override
  void career(){
    print("Youtuber");
  }
}

void main(){
  DemoChild obj1 = DemoChild();
  obj1.data();
  obj1.career();
}