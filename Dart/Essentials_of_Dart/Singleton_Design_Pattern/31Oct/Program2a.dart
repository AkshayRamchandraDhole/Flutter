import 'Program2.dart';

void main(){
  Demo obj1 = Demo.getInstance();
  Demo obj2 = Demo.getInstance();

  print(obj1.hashCode);
  print(obj2.hashCode);

 /* Demo obj3 = Demo();
  Demo obj4 = Demo();

  print(obj3.hashCode);
  print(obj4.hashCode);
  */

}