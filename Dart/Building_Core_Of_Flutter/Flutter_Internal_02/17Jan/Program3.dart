class BuildContext{
  BuildContext(){
    print("In BuildContext Constructor");
  }
}

abstract class Widget{
  const Widget();

  Widget build(BuildContext obj);
}

abstract class Stateless extends Widget{
  const Stateless();

  Widget build(BuildContext obj);
}

void runApp(Widget obj){
  print("RunApp");
  BuildContext objVal = BuildContext();
  obj.build(objVal);
}

class MaterialApp extends Widget{
  MaterialApp(){
    print("Constructor : Material App");
  }

  Widget build(BuildContext obj){
    return MaterialApp();
  }
}