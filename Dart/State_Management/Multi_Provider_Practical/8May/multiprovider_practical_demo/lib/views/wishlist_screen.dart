import 'package:flutter/material.dart';
//import 'package:multiprovider_practical_demo/controllers/product_controller.dart';
import 'package:multiprovider_practical_demo/controllers/product_controller.dart';
//import 'package:multiprovider_practical_demo/controllers/wishlist_controller.dart';
import 'package:provider/provider.dart';
import 'dart:developer';



class WishListScreen extends StatelessWidget{
  const WishListScreen({super.key});

  @override 
  Widget build(BuildContext context){
    log("IN WISHLIST BUILD");
    var provoderObj = Provider.of<ProductController>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Display"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        
      ),
      body: Container(
        child: Row(
          children: [
            Column(
              children: [
                  Image.network("${provoderObj.productModelObj[0].productImage}",
              height: 250,
              width: 250,
              ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
              const SizedBox(height: 10,),
             Text("${provoderObj.productModelObj[0].productName}"),
              const SizedBox(height: 10,),
              Text("${provoderObj.productModelObj[0].price}"),
              const SizedBox(height: 10,),
              const Icon(
                Icons.favorite
              ),
              const SizedBox(height: 10,),
              IconButton(onPressed: (){
              provoderObj.removeToFavorite(index: 0);
              }, icon: const Icon(
                Icons.delete
              ))

              ],
            )
          ],
        ),
      )
    );
  }
}