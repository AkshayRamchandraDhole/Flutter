import 'Program3.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends Stateless{
  const MyApp();

  @override
  Widget build(BuildContext context){
    print("App build");
    return MaterialApp();
  }
}