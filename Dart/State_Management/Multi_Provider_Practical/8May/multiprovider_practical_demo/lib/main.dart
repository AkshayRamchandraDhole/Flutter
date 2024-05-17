import 'package:flutter/material.dart';
import 'package:multiprovider_practical_demo/controllers/product_controller.dart';
import 'package:multiprovider_practical_demo/controllers/wishlist_controller.dart';
import 'package:multiprovider_practical_demo/views/get_product_details.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (BuildContext context) {
          return ProductController();
        }),
        ChangeNotifierProvider(create: (BuildContext context){
          return WishListController();
        })
      ],
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Provider Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: GetProductDetails(),
        );
      },
    );
  }
}
