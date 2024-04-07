import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget{

  const Assignment3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:ListView(
            scrollDirection: Axis.vertical,
            children: [
              const SizedBox(
                height: 20,
              ),
              for(int i=0;i<=8;i++)
               Container(
                height: 180,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.5
                  )
                ),
                child: Column(
                  children: [
                    const SizedBox(
                        height: 10,
                    ),
                    Row(
                      children: [

                        const SizedBox(
                          width: 40,
                        ),
                         Container(
                          padding: const EdgeInsets.all(6),
                          height: 50,
                          width: 50,
                           
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.3
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                             child: Image.network("https://yt3.ggpht.com/a/AATXAJyHhrOs1-azswsaulqXzvbwH-XsjNmq80jTbQ=s900-c-k-c0xffffffff-no-rj-mo",
                             height: 10,
                             width: 10,
                            scale: 1.0,
                             ),
                         ),
                         
                          const SizedBox(
                            width: 150,
                          ),
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                  border: Border.all(
                                  width: 0.5
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Text(
                                  "Core2web",
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12
                                  ),
                                ),
                              ),
                              
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                  border: Border.all(
                                  width: 0.5
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Text(
                                  "Biencaps",
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12
                                  ),
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.center,
                                  height: 40,
                                  width: 80,
                                  decoration: BoxDecoration(
                                  border: Border.all(
                                  width: 0.5
                                  ),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: const Text(
                                  "Incubator",
                                  //textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),

                           Container(
                            height: 40,
                            child: const Icon(
                              Icons.check_circle_outline,
                             
                            ),
                          )
                      
                      ],

                      
                    ),
                    
                  ],
                  ),
               ) ,

               
               
            ],
            
      )
    );
  }
}