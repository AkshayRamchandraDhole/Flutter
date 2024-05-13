import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

import 'package:provider_practical_demo/controllers/product_controller.dart';

class ProductDisplay extends StatelessWidget{
  const ProductDisplay({super.key});

  @override 
  Widget build(BuildContext context){
    log("IN PRODUCT DISPLAY BUILD");
    var provoderObj = Provider.of<ProductController>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Display"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:  Column(
            children: [
              Image.network("${provoderObj.productModelObj?.productImage}",
              height: 250,
              width: 250,
              ),
              const SizedBox(height: 10,),
              Text("${provoderObj.productModelObj?.productName}"),
              const SizedBox(height: 10,),
              Text("${provoderObj.productModelObj?.price}"),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //IS FAVORITE

                  Consumer<ProductController>(builder: (context, provider, child) {
                    log("IN FAV CONSUMER");
                    return GestureDetector(
                      onTap: (){
                        provoderObj.addToFavorite();
                      },
                      child: Icon(
                            (provoderObj.productModelObj!.isFavorite!) 
                            ? Icons.favorite_outline 
                            : Icons.favorite_outline_rounded,
                        ),
                    );
                  },
                  ),
                  const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      provoderObj.addQuantity();
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),

                  const SizedBox(width: 5,),

                  Consumer<ProductController>(builder: (context, provider, child) {
                    log("IN QUANTITY");
                    return Text("${provoderObj.productModelObj?.quantity}");
                  },),

                  const SizedBox(width: 5,),

                  GestureDetector(
                    onTap: (){
                      provoderObj.removeQuantity();
                    },
                    child: const Icon(Icons.remove),
                  )
                ],
              )
                ],
              ),
              

            ],
          ),
        ),
    );
  }
}