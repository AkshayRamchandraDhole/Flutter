import "package:flutter/material.dart";
import "package:navigation_demo/third_page.dart";
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context){
                  return const ThirdScreen();
              })
            );

            // Navigator.of(context).pushAndRemoveUntil(
            //     MaterialPageRoute(
            //       builder: (context){
            //         return const ThirdScreen();
            //     }),
            //     (route){
            //       return false;
            //     }
            // );
          },
           child: const Text("Click Me")
           ),
      ),
    );
  }
}