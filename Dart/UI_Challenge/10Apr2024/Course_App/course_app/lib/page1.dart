import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';


class Page1 extends StatelessWidget{

  const Page1({super.key});

  //List textList = ["UI/UX", "VISUAL", "ILLUSTRATION","PHOTO"];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
      ),
      backgroundColor: Colors.grey.shade300,
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            const Row(
            children:  [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 440,
                  ),
                 Icon(Icons.notifications_none)
            ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                height: 87,
                width: 182,
                child: const Column(
                  children: [
                  Text(
                    "Welcome to New",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    ),
                    
                  ),
                  Text(
                    "Educourse",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                  ),

                ],
                )

                ),
                const SizedBox(
                    height: 10,
                  ),
                const TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Enter Your Keyword",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(28.5),
                          
                        ),
                        
                      ),
                      suffixIcon: Icon(Icons.search,
                      size: 35,
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    height: 450,
                    width: 470,
                   // color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38),
                      color: Colors.white
                    ),

                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             SizedBox(
                              height: 60,
                              width: 20,
                            ),
                              Text(
                                "Course For You", 
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w200
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(
                              height: 10,
                              
                            ),
                        Row(
                         // children: [
                             // ListView(
                                    //scrollDirection: Axis.horizontal,
                                    children: [
                                      
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 242,
                                            width: 190,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(14),
                                              border: Border.all(width: 0.2),
                                              gradient: const LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                colors: [
                                                  Colors.purple,
                                                  Colors.pink
                                                ]
                                              )
                                              ),
                                             child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                const Row(
                                                  children: [
                                                     SizedBox(
                                                      height: 20,
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "UI/UX Designer"
                                                    ),
                                                    
                                                  ],
                                                ),
                                                const SizedBox(
                                                      height: 1,
                                                      width: 10,
                                                    ),
                                               const  Text(
                                                      "from Scratch"
                                                    ),
                                                
                                                 Row(
                                                   children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                     Image.network("https://cdn.dribbble.com/users/3661998/screenshots/7012801/image.png",
                                                      height: 200,
                                                     width: 170,
                                                      ),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                          ), 
                                        ),
                               //     ],
                             // )

                                      Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 242,
                                            width: 190,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(14),
                                              border: Border.all(width: 0.2),
                                              gradient: const LinearGradient(
                                                    begin: Alignment.centerLeft,
                                                    end: Alignment.centerRight,
                                                colors: [
                                                  Colors.purple,
                                                  Colors.pink
                                                ]
                                              )
                                              ),
                                             child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                const Row(
                                                  children: [
                                                     SizedBox(
                                                      height: 20,
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      "Design Thinking"
                                                    ),
                                                    
                                                  ],
                                                ),
                                                const SizedBox(
                                                      height: 1,
                                                      width: 10,
                                                    ),
                                               const  Text(
                                                      "The Beginner"
                                                    ),
                                                
                                                 Row(
                                                   children: [
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                     Image.network("https://cdn-icons-png.flaticon.com/512/2097/2097046.png",
                                                      height: 200,
                                                     width: 170,
                                                      ),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                          ), 
                                        )


                          ],
                        ),

                        const SizedBox(
                          height: 5,
                         
                        ),

                       const Row(
                          children: [
                            SizedBox(
                                height: 5,
                                width: 10,
                              ),
                            Text("Course By Category",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                             
                            ),

                              )
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                         Row(
                          children: [
                           const  SizedBox(
                                height: 5,
                                width: 10,
                              ),
                              
                              Container(
                                    height: 65,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8.0),
                                        
                                        
                                      ),
                                      color: Colors.purple,
                                      border: Border.all(width: 0.2),
                                    ),
                                    child: const Column(
                                      children: [
                                        
                                        
                                      Icon(Icons.ad_units_sharp),
                                       SizedBox(height: 25),
                                      Text("UI/UX",
                                      style: TextStyle(
                                        fontSize: 10
                                      ),
                                      ),

                                    ],
                                    ),
                              ),

                            const  SizedBox(
                                height: 35,
                                width: 40,
                              ),

                              Container(
                                    height: 65,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8.0)
                                      ),
                                      border: Border.all(width: 0.2),
                                      color: Colors.purple,
                                    ),
                                    child: const Column(
                                      children: [
                                        
                                        
                                      Icon(Icons.view_sidebar_outlined),
                                       SizedBox(height: 25),
                                      Text("VISUAL",
                                      style: TextStyle(
                                        fontSize: 10
                                      ),
                                      ),

                                    ],
                                    ),
                              ),

                              const  SizedBox(
                                height: 35,
                                width: 40,
                              ),

                              Container(
                                    height: 65,
                                    width: 85 ,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8.0)
                                      ),
                                      border: Border.all(width: 0.2),
                                      color: Colors.purple,
                                    ),
                                    child: const Column(
                                      children: [
                                        
                                        
                                      Icon(Icons.install_desktop_rounded),
                                       SizedBox(height: 25),
                                      Text("ILLUSTRATION",
                                      style: TextStyle(
                                        fontSize: 10
                                      ),
                                      ),

                                    ],
                                    ),
                              ),

                              const  SizedBox(
                                height: 35,
                                width: 40,
                              ),

                              Container(
                                    height: 65,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(8.0)
                                      ),
                                      border: Border.all(width: 0.2),
                                      color: Colors.purple,
                                    ),
                                    child: const Column(
                                      children: [
                                        
                                        
                                      Icon(Icons.photo),
                                       SizedBox(height: 25),
                                      Text("PHOTO",
                                      style: TextStyle(
                                        fontSize: 10
                                      ),
                                      ),

                                    ],
                                    ),
                              ),
                              
                            
                          ],
                        )

                      ],),
                  )
          ]
          ),
          
        ),
      

    );
  }
}