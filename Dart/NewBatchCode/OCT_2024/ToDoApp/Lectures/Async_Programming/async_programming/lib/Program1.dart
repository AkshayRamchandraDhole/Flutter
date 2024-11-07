
int fun(){
  print("Start Fun");
  print("End Fun");
  return 10;
}
void main(){
  print("Start Main");
  int x = fun();
  print(x);
  print("End Main");
}