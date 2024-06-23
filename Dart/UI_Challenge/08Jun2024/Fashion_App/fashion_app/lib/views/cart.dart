import 'package:fashion_app/views/boilerCode.dart';
import 'package:flutter/material.dart';

import 'checkout.dart';
import 'details.dart';
class CartPage extends StatefulWidget{

  const CartPage({super.key});

  @override
  State createState ()=> _CartPageState();
}

class _CartPageState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 175,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new_sharp
                      ),
                      Container(
                        height: 18,
                        width: 33,
                        child: Text("Cart",
                        style: getStylePage1(14, 13, 13, 14, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              
              Container(
                height: 40,
                width: 176,
                child: Text("My Orders",
                style: getStylePage1(30, 13, 13, 14, 1),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              
              getCartPageContainer(Image.asset("page41.png"), "Premium Tagerine Shirt"),
              const SizedBox(
                height: 20,
              ),

              getCartPageContainer(Image.asset("page42.png"), "Leather Tagerine Coart"),

              const SizedBox(
                height: 40,
                width : 80
              ),

              Container(
                height: 103,
                width: 315,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                            width: 80,
                          ),
                    
                   getRowCartPage("Total Items (3)", "116.00"),
                   getRowCartPage("Standard Delivery", "12.00"),
                   getRowCartPage("Total Payment", "126.00"),
                  ],
                ),
              ),



              
            ],
          ),
          )
        ),
        floatingActionButton: Container(
          height: 62,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            
          ),
          child: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
            onPressed: (){
              Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> CheckoutPage()
                       )
                       );
            },
            child: Text("Checkout Now",
            style: getStylePage1(18, 255, 255, 255, 1),
            ),
            ),
        ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
