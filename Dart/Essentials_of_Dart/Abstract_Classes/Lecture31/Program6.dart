abstract class Developer{
  void develop(){
    print("We build software");
  }
  void devType();
}
class MobileDev extends Developer{
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

  /* Developer d3 = Developer();
  d3.develop();
  d3.devType();
 */
}