import 'package:flutter/material.dart';
import 'package:multiprovider_practical_demo/controllers/product_controller.dart';
import 'package:multiprovider_practical_demo/controllers/wishlist_controller.dart';
import 'package:multiprovider_practical_demo/views/wishlist_screen.dart';
import 'package:provider/provider.dart';
import 'dart:developer';



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
        actions: [
          IconButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return const  WishListScreen();
                })
              );
          }, 
          icon: const Icon(
            Icons.favorite_outline_rounded,
            color: Colors.red,
          ))
        ],
      ),
      body: ListView.builder(
        itemCount: provoderObj.productModelObj.length,
        itemBuilder: (context, index){
          return Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("${provoderObj.productModelObj[index].productImage}",
              height: 250,
              width: 250,
              ),
              const SizedBox(height: 10,),
              Text("${provoderObj.productModelObj[index].productName}"),
              const SizedBox(height: 10,),
              Text("${provoderObj.productModelObj[index].price}"),
              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //IS FAVORITE

                  Consumer<WishListController>(builder: (context, provider, child) {
                    log("IN FAV CONSUMER");
                    return GestureDetector(
                      onTap: (){
                        provoderObj.addToFavorite(index: 0);
                        if(provoderObj.productModelObj[index].isFavorite!){
                          Provider.of<WishListController>(context,listen: false).addDataToWishlist(pObj: provoderObj.productModelObj[index]);
                        }
                      },
                      child: Icon(
                            (provoderObj.productModelObj[index].isFavorite!) 
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_rounded,
                        ),
                    );
                  },
                  ),

                  Row(
                    children: [
                       GestureDetector(
                    onTap: (){
                      provoderObj.addQuantity(index: index);
                    },
                    child: const Icon(
                      Icons.add,
                    ),
                  ),

                 const SizedBox(width: 5,),

                  Consumer<ProductController>(builder: (context, provider, child) {
                    log("IN PRODUCT DISPLAY QUANTITY");
                    return Text("${provoderObj.productModelObj[index].quantity}");
                  },),

                  const SizedBox(width: 5,),

                   GestureDetector(
                    onTap: (){
                      provoderObj.removeToFavorite(index: 0);
                      provoderObj.removeWishlist(index: 0);
                    },
                    child: const Icon(Icons.remove),
                  )
                    ],
                  )
                ],
              )
              ],
              ),
          );
        }
      )
    );
  }
}