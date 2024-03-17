import 'package:flutter/material.dart';
class ElevatedButtonAssignment5 extends StatelessWidget{
  const ElevatedButtonAssignment5({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : const Text("Floating Action Button"
        ),

      ),

      floatingActionButton: LongPreesButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
    );
  }
}

class LongPreesButton extends StatefulWidget{

 

 
  @override
  State<LongPreesButton> createState() => LongPreesButtonState();

}

class LongPreesButtonState extends State<LongPreesButton>{

  

  Color buttonColor = Colors.blue;

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onLongPress: (){
        setState(() {
          buttonColor = Colors.purple;
        });
      },
      child: FloatingActionButton(onPressed: (){},
      backgroundColor: buttonColor,
      child: const Icon(Icons.add),
      ),
      );
  }
}