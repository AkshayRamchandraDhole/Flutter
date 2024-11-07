void fun(){
  print("Start Fun");
  Future.delayed(const Duration(seconds: 3),()=>print("Delayed"));
  print("End Fun");
}
void main(){
  print("Start Main");
  //Future.delayed(const Duration(seconds: 3),()=>print("Delayed"));
  fun();
  print("End Main");
}