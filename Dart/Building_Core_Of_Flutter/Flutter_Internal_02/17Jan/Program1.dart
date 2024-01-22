class Demo{
  final int x;
  final String str;

  const Demo({this.x = 0, this.str =''});
  //const Demo({required this.x, required this.str});

  void printData(){
    print(x);
    print(str);
  }
}
void main(){
  Demo obj = Demo(x: 10, str: "Akshay");
  obj.printData();
}