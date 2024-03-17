import 'package:flutter/material.dart';
class ElevatedButtonAssignment4 extends StatelessWidget{
  const ElevatedButtonAssignment4({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(
        title : const Text("Floating Action Button"
        ),

      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},
    
      child: const Icon(Icons.add),

      
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
    );
  }
}

class HoverColorButton extends StatefulWidget{

  final VoidCallback onPressed;
  final Widget icon;

  const HoverColorButton({
    required this.onPressed,
    required this.icon
  });

  @override
  State<HoverColorButton> createState() => HoverColorButtonState();

}

class HoverColorButtonState extends State<HoverColorButton>{

  

  bool isHover = false;

  @override
  Widget build(BuildContext context){
    return MouseRegion(
      onEnter: (_) => setState(()=> isHover=true),
    onExit: (_) => setState(() => isHover=false),
    child: FloatingActionButton(
      onPressed: widget.onPressed,
     
     backgroundColor: isHover ? Colors.orange : null,
      child: widget.icon,
    ),

    );
  }
}