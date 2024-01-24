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
    print("MobileDev Constructor");
  }
  void devType(){
    print("Flutter Dev");
  }
}

void main(){
  Developer d1 = MobileDev();


}
