abstract class Developer{
  Developer(){
    print("Dev Constructor");
  }
  void develop(){
    print("We build software");
  }
  void devType();
}
class MobileDev implements Developer{
  MobileDev(){
    Developer();
    print("MobileDev Constructor");
  }
  void develop(){
    print("Develop Method");
  }
  void devType(){
    print("Flutter Dev");
  }
}

void main(){
  Developer d1 = MobileDev();


}
