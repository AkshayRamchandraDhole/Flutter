import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'menu_drawer.dart';

class TransactionScreen extends StatefulWidget{
  const TransactionScreen({super.key});

  @override 
   @override
  State createState() => _TransactionScreenState(); 
}
class _TransactionScreenState extends State{




void showSheet(){
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
   builder: (BuildContext context){
      return const Padding(
        padding:  EdgeInsets.all(10),

        child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              "Date",
              style: TextStyle(
                color: Color.fromRGBO(33, 33, 33, 1)
              ),
            ),
             SizedBox(
                    height: 5,
                  ),
                  TextField(
                    
                   // controller: titleController,
                    decoration:  InputDecoration(
                      hintText: "11-06-2022",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        ),
                    ),
                  ),
                   SizedBox(
                    height: 10,
                  ),

                  Text("Amount",
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
                      hintText: "900",
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
                      hintText: "Shopping",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)
                        ),
                        ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Description",
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
            title: const Text("June 2022",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(163, 8, 8, 1),
            ),
            ),
            actions: const [
              Icon(Icons.search)
            ],
            
              ),
      drawer: Drawer(
        child:  Column(
          children:  [
            const  SizedBox(
                  height: 20,
              ),
             const Text(
              "Expense Manager",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
               // height: 24,
                color: Color.fromRGBO(0, 0, 0, 1)
              ),
               
            ),
            const Text(
              "Saves all your Transactions",
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 0.5)
              ),
            ),
           const  SizedBox(
                  width: 20,
                  height: 20,
              ),
              Row(
               // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 184,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromRGBO(14, 161, 125, 0.15)
                    ),
                    child:  Row(
                      children: [
                        Image.asset("images/Subtract.png"),
                         const Text("Transaction"),
                      ],
                    ),
                  )
                ],
                
              ),
              const SizedBox(
                height: 1
              ),
              GestureDetector(
                onTap: (){

                },
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 184,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromRGBO(14, 161, 125, 0.15)
                        
                        
                      ),
                      child:
                       Row(
                         children: [
                          Image.asset("images/iconpiechart.png"),
                           const Text("Graphs"),
                         ],
                       ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 1
              ),
               GestureDetector(
                onTap: (){
                  
                },
                 child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 184,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromRGBO(14, 161, 125, 0.15)
                        
                      ),
                      child: Row(
                        children: [
                          Image.asset("images/Subtract(1).png"),
                          const Text("Category"),
                        ],
                      ),
                    )
                  ],
                               ),
               ),
              const SizedBox(
                height: 1
              ),
               GestureDetector(
                onTap: (){
                  
                },
                 child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 184,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromRGBO(14, 161, 125, 0.15)
                        
                      ),
                      child: Row(
                        children: [
                           Image.asset("images/Vector.png"),
                          const Text("Trash"),
                        ],
                      ),
                    )
                  ],
                               ),
               ),
              const SizedBox(
                height: 1
              ),
               GestureDetector(
                onTap: (){
                  
                },
                 child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 184,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color.fromRGBO(14, 161, 125, 0.15)
                        
                      ),
                      child: Row(
                        children: [
                          Image.asset("images/Vector(1).png"),
                          const Text("About us"),
                        ],
                      ),
                    )
                  ],
                               ),
               ),

              
          ],
        ),
      ),
      body:  ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
            //  height: 112,
             // width: 330,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: const Color.fromRGBO(0, 0, 0, 1)
                  ),
                  
                    
                  
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),

                child: Row(
                  
                  children: [
                    Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Row1
                    
                        Container(
                          height: 41,
                          width: 41,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            
                          ),
                    
                          child: Image.asset("images/Maskgroup.png"),
                    
                        ),
                         const SizedBox(
                                  width: 10,
                            ),
                      ]
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [
                              Text("Medicine",
                                    style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1)
                                          ),
                                    ),
                                SizedBox(
                                  width: 250,
                                ),
                                Icon(
                                  Icons.remove_circle_outline
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("500")
                            ],
                          ),

                     SizedBox(
                        height: 10,
                    ),
                      Row(
                       // mainAxisAlignment: MainAxisAlignment.start,
                       //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Lorem Ipsum is simply dummy text of the",
                              style: TextStyle(
                            color: Color.fromRGBO(0, 0,0, 0.8)
                          ),
                            ),

                        ],
                      ),
                       SizedBox(
                        width: 00,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                             Text(
                              "3 June | 11:50 AM"
                            )
                        ],
                      )


                      ],
                      )
                  ],
                ),
                ),
            ),

           

            );

        }
        ),

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