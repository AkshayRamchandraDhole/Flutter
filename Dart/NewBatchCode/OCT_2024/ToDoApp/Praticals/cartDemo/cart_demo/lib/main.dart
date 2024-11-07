import 'package:cart_demo/cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          title: const Text("My cart",
            style: TextStyle(
              color: Colors.blue,
            )
            ),
            centerTitle: true,
           shape: Border.all(
            color: Colors.grey
           ),

          ),
        
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                    ListView(
                      shrinkWrap: true,
                      children: [
                      cartContainer(),
                      const SizedBox(
                        height: 20,
                      ),
                      cartContainer(),
            ]),
                    
                    Container(
                      height: 200,
                      width: 500,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal:",
                              style: TextStyle(
                                fontSize: 14, 
                                color: Colors.grey
                              )
                              ),
                              Text("800.00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery Fee:",
                              style: TextStyle(
                                fontSize: 14, 
                                color: Colors.grey
                              ),
                              ),
                              Text("5.00",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              )
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Discount:",
                              style: TextStyle(
                                fontSize: 14, 
                                color: Colors.grey
                              ),
                              ),
                              Text("40%",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                              )
                            ],
                          ),
                          ElevatedButton(
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)
                          ),
                          onPressed: (){},
                           child: const Text("Checkout for 480.00",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                           ))
                        ],
                      ),
                    ),
            
            ],
          ),
        )
      ),
    );
  }
}
