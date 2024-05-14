import 'package:flutter/material.dart';

import 'alert_box.dart';
import 'package:google_fonts/google_fonts.dart';
class GridViewScreen extends StatefulWidget{
  const GridViewScreen({super.key});

  @override 
   @override
  State createState() => _GridViewScreenState(); 
}
class _GridViewScreenState extends State{

void showSheet(){
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
   builder: (BuildContext context){
      return  Padding(
        padding:  EdgeInsets.all(10),

        child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
                  Container(
                    alignment: Alignment.center,
                      height: 97,
                      width: 94,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(125, 125, 125, 1),
                       // image: DecorationImage(image: image)
                      ),
                  ),
                  const SizedBox(

                  ),
                  Text("Category",
                     style: TextStyle(
                      color: Color.fromRGBO(33, 33, 33, 1),
                     ),
              
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    //controller: descriptionController,
                    decoration: InputDecoration(
                      hintText: "Image URL",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Category",
                     style: TextStyle(
                      color: Color.fromRGBO(33, 33, 33, 1),
                     ),
              
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextField(
                    //controller: descriptionController,
                    decoration: InputDecoration(
                      hintText: "Lorem Ipsum is simply dummy text of the",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        ),
                    ),
                  ),

          ],
        ),
        );
   }
   );
     
}

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          //childAspectRatio: 0.6
          ),
          itemCount: 4,
         itemBuilder: (context, index) {
           return Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
              height: 150,
              width: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromRGBO(255, 255, 255, 1)
                ),
                child: Container(
                  width: 74,
                  height: 74,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromRGBO(255, 255, 255, 1)
                ),
                child: Image.asset("images/food.png"),
                ),
             ),
           );
         }),
         floatingActionButton: Container(
          height: 46,
          width: 166,
          child: FloatingActionButton(
            elevation: 10,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), // Set button border radius
          ),
            onPressed: (){
                showSheet();
            } ,
            
            child: const Text("Add Transaction"),
          ),
        ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}