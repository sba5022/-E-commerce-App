import 'package:appbar/Widgets/Product_Card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_bottom_nav_screen.dart';
class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: MaterialButton(
              onPressed: (){
                Get.to(MainBottomNavScreen());
              },
              child: Icon(Icons.arrow_back)),
          title: Text('Wishlist', style: TextStyle(color: Colors.black),),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: 18,
              itemBuilder: ( context, index){
                return FittedBox(child: ProductCard());
              } ),
        )
    );
  }
}