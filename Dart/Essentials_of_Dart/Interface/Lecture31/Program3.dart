abstract class Developer{
  void develop(){
    print("We build software");
  }
  void devType();
}
class MobileDev implements Developer{
  void devType(){
    print("Flutter Dev");
  }
}
class WebDev extends Developer{
  void devType(){
    print("Web Dev");
  }
}
void main(){
  Developer d1 = MobileDev();
  d1.develop();
  d1.devType();

  Developer d2 = WebDev();
  d2.develop();
  d2.devType();

  WebDev w1 = WebDev();
  w1.develop();
  w1.devType();

}
