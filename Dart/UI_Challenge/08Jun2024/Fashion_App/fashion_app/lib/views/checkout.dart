import 'package:fashion_app/views/boilerCode.dart';
import 'package:flutter/material.dart';
class CheckoutPage extends StatefulWidget{

  const CheckoutPage({super.key});

  @override
  State createState ()=> _CheckoutPageState();
}

class _CheckoutPageState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                  height: 30,
                  width: 195,
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.arrow_back_ios_new_sharp
                      ),

                    const SizedBox(
                      width: 90,
                    ),
                      Container(
                        height: 18,
                        width: 63,
                        child: Text("Checkout",
                        style: getStylePage1(14, 13, 13, 14, 1),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
              
                Container(
                height: 76,
                width: 316,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                        children: [
                          const SizedBox(
                              width: 50,
                            ),
                          Container(
                            height: 14,
                            width: 99,
                            child: Text("Delivery Address",
                            style: getStylePage1(10, 121, 119, 128, 1),
                            ),
                          )
                        ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                              width: 50,
                            ),
                          Container(
                            height: 46,
                            width: 46,
                            child: Image.asset("Rectangle121.png"),
                          ),
                          const SizedBox(
                              width: 5,
                            ),
                          Container(
                            height: 48,
                            width: 168,
                            child: Text("25/3 Housing Estate, Sylhet",
                            style: getStylePage1(16, 13, 13, 14, 1),
                            ),
                          ),

                          Container(
                            height: 14,
                            width: 46,
                            child: Text("Change",
                            style: getStylePage1(10, 121, 119, 128, 1),
                            ),
                          )
                        ],
                    )
                  ],
                )
              ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 18,
              width: 198,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.timer_outlined),
                  Text("Delivered in next 7 days",
                  style: getStylePage1(12, 13, 13, 14, 1),
                  )
                ],
              ),
            ),

              const SizedBox(
                height: 20,
              ),
            Container(
              height:50,
              width: 315,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Row(
                    children: [
                      const SizedBox(
                            //height: 20,
                             width: 40,
                        ),
                      Text("Payment Method",
                      style: getStylePage1(16, 121, 119, 128, 1),
                      )
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                            //height: 20,
                             width: 28,
                        ),
                      Image.asset("visa.png"),
                      Image.asset("american.png"),
                      Image.asset("mastercard.png"),
                      Image.asset("paypal.png"),
                      Image.asset("pay.png"),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
                            height: 30,
                             width: 40,
                        ),
            Container(
              height: 54,
              width: 315,
              //alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.zero)
              ),
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Add Voucher",
                    style: getStylePage1(14, 121, 119, 128, 1),
                ),
                ),
            ),
            const SizedBox(
                            height: 30,
                             //width: 28,
                        ),
            Container(
              height: 72,
              width: 315,
              child: Text("Note : Use your order id at the payment. Your Id #154619 if you forget to put your order id we can’t confirm the payment.",
              //style: getStylePage1(15, r, g, b, op),
              ),
            ),
              const SizedBox(
                            height: 30,
                             //width: 28,
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
              const SizedBox(
                            height: 30,
                             //width: 28,
                        ),
            Container(
              height: 62,
              width: 190,
            // alignment: Alignment.center,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll( Color.fromRGBO(255, 122, 0, 1),)
                ),
                onPressed: (){
                  Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> CheckoutPage()
                       )
                       );
                }, 
                child: Text("Pay Now",
                style: getStylePage1(18, 255, 255, 255, 1),
                ),
                ),
            )

            ],
          ),
          )
        ),
       
    );
  }
}
