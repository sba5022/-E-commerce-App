import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'main_bottom_nav_screen.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: MaterialButton(
            onPressed:(){
              Get.to(MainBottomNavScreen());
            } ,
            child: Icon(Icons.arrow_back)),
        title: Text('Carts', style: TextStyle(color: Colors.black),),
      ),

    );
  }
}
