abstract class Developer{
  
  factory Developer(String devtype){
    if(devtype == 'Backend')
      return Backend();
    else if(devtype == 'Frontend')
      return Frontend();
    else if (devtype == 'Mobile')
      return Mobile();
    else 
      return Other();  
  } 
  void devLang();
}
class Backend implements Developer{
  void devLang(){
    print("NodeJs/Springboot");
  }
}
class Frontend implements Developer{
  void devLang(){
    print("ReactJs/AngularJs");
  }
}
class Mobile implements Developer{
  void devLang(){
    print("Flutter/Android/Kotlin");
  }
}
class Other implements Developer{
  void devLang(){
    print("Testing/Devops/Support");
  }
}