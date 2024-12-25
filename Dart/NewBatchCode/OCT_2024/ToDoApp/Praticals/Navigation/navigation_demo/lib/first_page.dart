import "package:flutter/material.dart";
import "package:navigation_demo/second_page.dart";
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Sceen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return const SecondPage();
                })
            );


            //==================pushReplacement===================
            // Navigator.of(context).pushReplacement(
            //     MaterialPageRoute(
            //       builder: (context){
            //         return const SecondPage();
            //     })
            // );

            //==================pushNamed===================
            // Navigator.of(context).pushNamed(
                
            //     "/thirdScreen",
            // );
          },
           child: const Text("Click Me")
           ),
      ),
    );
  }
}