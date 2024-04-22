import 'package:flutter/material.dart';

class SharedDateObj extends InheritedWidget{

    final int data; 
  const SharedDateObj({
    super.key,
    required this.data,
    required super.child,

  });
  @override
  bool updateShouldNotify(SharedDateObj oldWidget){
    return data != oldWidget.data;
  }

  static SharedDateObj of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<SharedDateObj>()!;
  }

}

class InheritedWidgetDemo extends StatefulWidget{

  const InheritedWidgetDemo({super.key});

  @override
  State createState() => _InheritedWidgetDemo();
}

class _InheritedWidgetDemo extends State<InheritedWidgetDemo>{

  //SharedDateObj sharedDateObj = SharedDateObj.of(context);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Demo State"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(

        children: [
          
            Text("${SharedDateObj.of(context).data}",),

            const SizedBox(
              height: 20,
            ),

            const  AccessDataWidget(),
        ],),
    );
  }
}

class AccessDataWidget extends StatelessWidget{

   const AccessDataWidget({super.key});

  //SharedDateObj sharedDateObj = SharedDateObj.of();
  // SharedDateObj sharedDateObj;
  @override 
  Widget build(BuildContext context){
      return Row(
        children: [
            Text( 
              "${SharedDateObj.of(context).data}"
            ),

            const SizedBox(
              width: 20,
            ),
             const AccessDataChild(),
        ],
      );
  }
}

class AccessDataChild extends StatelessWidget{

   const AccessDataChild({super.key});

  //SharedDateObj sharedDateObj = SharedDateObj.of(context);
  @override 
  Widget build(BuildContext context){
      return Text(
      "${SharedDateObj.of(context).data}"
     );

            
        
      
  }
}