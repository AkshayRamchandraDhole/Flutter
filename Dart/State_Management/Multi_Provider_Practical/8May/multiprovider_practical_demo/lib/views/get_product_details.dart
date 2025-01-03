import 'package:flutter/material.dart';
import 'package:multiprovider_practical_demo/controllers/product_controller.dart';
import 'package:multiprovider_practical_demo/models/product_model.dart';
import 'package:multiprovider_practical_demo/views/product_display.dart';
import 'package:provider/provider.dart';


class GetProductDetails extends StatelessWidget{

   GetProductDetails({super.key});

  final TextEditingController _productImageTextEditingController = TextEditingController();
  final TextEditingController _productNameTextEditingController = TextEditingController();
  final TextEditingController _productPriceTextEditingController = TextEditingController();
  

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("GET PRODUCT DETAILS"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),

          //PRODUCT IMAGE

          TextFormField(
            controller: _productImageTextEditingController,
            decoration: InputDecoration(
              hintText: "Add Product Image",
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),

          const SizedBox(height: 20,),


          //PRODUCT NAME
          TextFormField(
            controller: _productNameTextEditingController,
            decoration: InputDecoration(
              hintText: "Add Product Name",
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),

           const SizedBox(height: 20,),

           //PRODUCT PRICE

           TextFormField(
            controller: _productPriceTextEditingController,
            decoration: InputDecoration(
              hintText: "Add Product price",
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),

          const SizedBox(height: 20,),

          ElevatedButton(
            onPressed: (){
              var tempObj = ProductModel(
                  isFavorite: false,
                  price: _productPriceTextEditingController.text.trim(),
                  productImage: _productImageTextEditingController.text.trim(),
                  productName: _productNameTextEditingController.text.trim(),
                  quantity: 0
              );

              Provider.of<ProductController>(context,listen: false).addProductData(pObj : tempObj);

              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ProductDisplay();
              }));
            },
             child: const Text("Submit"))
        ],
      ),
    );
  }
}