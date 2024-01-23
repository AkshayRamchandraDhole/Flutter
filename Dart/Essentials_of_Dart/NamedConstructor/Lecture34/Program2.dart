// Const Constructor

class Demo{
  final int x;
  final String str;

  const Demo(this.x,this.str);
}
void main(){
  Demo d1 = const Demo(10,"Akshay");
  Demo d2 = const Demo(10, "Akshay");
  Demo d3 = const Demo(11,"Rahul");
  print(d1.hashCode);
  print(d2.hashCode);
  print(d3.hashCode);
}