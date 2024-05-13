import 'package:flutter/material.dart';
import 'package:multiprovider_practical_demo/models/product_model.dart';
import 'dart:developer';

class WishListController with ChangeNotifier{

  List<ProductModel> listOfWishlistProducts = [];

  // ADD PRODUCT DATA TO WISHLIST 

  void addDataToWishlist({required ProductModel pObj}){
   listOfWishlistProducts.add(pObj);
   log(" PRODUCT ADDED TO WISHLIST");
  }

   // REMOVE PRODUCT DATA FROM WISHLIST 

  void removeWishlist({required int index}){
   listOfWishlistProducts.removeAt(index);
   notifyListeners();
  }

}