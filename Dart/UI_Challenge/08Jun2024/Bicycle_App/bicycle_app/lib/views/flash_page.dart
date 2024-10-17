import 'package:bicycle_app/views/boilerCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class FlashPage extends StatefulWidget{
  const FlashPage({super.key});

  @override 
  State createState() => _FlashPageState();
  
}
class _FlashPageState extends State{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 54,
                  height: 20,
                  child: const Text("9:54",
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                  ),
                ),
                const SizedBox(
                  width: 320,
                ),
               const Icon(Icons.signal_cellular_alt,
                color: Color.fromRGBO(255, 255, 255, 1),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.wifi,
                color: Color.fromRGBO(255, 255, 255, 1)
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.battery_3_bar_outlined,
                color: Color.fromRGBO(255, 255, 255, 1)
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
             // width: 77,
             // height: 50,
              alignment: Alignment.topCenter,
              child: Image.asset("image1.png"),
            ),
          ),
          
          //getSizedBox(h1: 300),
          Container(
            //width: 445,
            //height: 597,
            alignment: Alignment.bottomCenter,
            //color: Colors.amber,
            child: Image.asset("Rectangle1.png",
           // width: 445,
            height: 597,
            ),
          ),


          RotatedBox(
            quarterTurns: 1,
            child: Container(
              //  width: 700,
              //  height: 192,
             alignment: Alignment.topCenter,
              child: Text("EXTREME",
             // textDirection: TextDirection.rtl,
              style: getStylePage1(110, 255, 255, 255, 0.5),
              ),
            ),
          ),

          Container(
            // width: 500,
            // height: 500,
            alignment: Alignment.bottomCenter,
            child: Image.asset("pngwing.png"),
          ),

          // Container(
          //   // width: 315,
          //   // height: 76,
          //   //alignment: Alignment.bottomRight,
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.rectangle,
          //     color: Color.fromRGBO(36, 44, 59, 1),
          //   ),
          //   child: Text("Get Start"),
          // ),
        ],
      ),
      floatingActionButton: Container(
        width: 315,
        height: 76,
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(34, 44, 59, 1),
          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(75, 76, 237, 1)
                ),
                child: Container(
                  width: 30,
                  height: 30,
                  
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                ),
              ),
              Text("Get Start",
              style: getPoppins(25, 255, 255, 255, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}