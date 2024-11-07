import 'package:flutter/material.dart';

Container cartContainer(){
  return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          
                          children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                    children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          margin: EdgeInsets.all(10.0),
                                          child: Image.asset("assets/shoe.jpeg"),
                                          )
                                    ],
                                  
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                      const Text("Nike Shoes",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal
                                      ),
                                      ),
                                      const Text('''With iconic style and lengendary comfort, on repeat''',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal
                                      ),
                                      ),
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                        const Text("570",
                                        style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal
                                      ),
                                        
                                        ),
                                       const SizedBox(width: 220),
                                        Row(
                                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Icon(Icons.remove),
                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.rectangle,
                                                borderRadius: const BorderRadius.horizontal(
                                                  left: Radius.zero,
                                                  right: Radius.zero
                                                ),
                                                //color: Colors.grey.shade200,
                                                border: Border.all(
                                                  color: Colors.blue
                                                )
                                              ),
                                              child: const Text("1",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal
                                                                            ),
                                              ),
                                            ),
                                            const Icon(Icons.add),
                                          ],
                                        )
                                      ],
                                      )
                                  ],
                                ),
                            ],
                          )
                          
                          
                          ],
                        
                                        
                        ),
                      );
}
 