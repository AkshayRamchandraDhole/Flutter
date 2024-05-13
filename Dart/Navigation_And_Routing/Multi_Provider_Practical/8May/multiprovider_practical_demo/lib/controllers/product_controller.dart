import 'package:flutter/material.dart';
import 'package:multiprovider_practical_demo/models/product_model.dart';

class ProductController with ChangeNotifier{

  List<ProductModel> productModelObj = [];

  // ADD PRODUCT DATA

  void addProductData({required ProductModel pObj}){
    productModelObj.add(pObj);
  }

  // ADD FAVORITE
  
  void addToFavorite({required int index}){
    productModelObj[index].isFavorite!= productModelObj[index].isFavorite;
    notifyListeners();
  }

  //ADD QUANTITY
  void addQuantity({required int index}){
    productModelObj[index].quantity = productModelObj[index].quantity! + 1;
    notifyListeners();
  }

  //REMOVE QUANTITY
  void removeQuantity({required int index}){
    productModelObj[index].quantity = productModelObj[index].quantity! - 1;
    notifyListeners();
  }

  //REMOVE FROM FAVORITE
 void removeToFavorite({required int index}){
    productModelObj[index].isFavorite!= true;
    notifyListeners();
  }
 // REMOVE PRODUCT DATA FROM WISHLIST 

  void removeWishlist({required int index}){
   productModelObj.removeAt(index);
   notifyListeners();
  }
 
}