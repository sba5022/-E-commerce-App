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
      body: Column(
       children: [
         Expanded(child: Column(
           children: [
             Card(
               child: Row(
                 children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.purple,
                  )
                 ],
               ),
             )
           ],
         )),
SizedBox(
  height: 700,
),
             // Container(
             //   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
             //   decoration: BoxDecoration(
             //     borderRadius: BorderRadius.only(
             //       topLeft: Radius.circular(16),
             //       topRight: Radius.circular(16),
             //     ),
             //       color: Colors.purple.shade200,
             //   ),
             //   child: Row(
             //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
             //     children: [
             //       Column(
             //         crossAxisAlignment: CrossAxisAlignment.start,
             //         children: [
             //           Text('TotalPrice', style: TextStyle(
             //             fontWeight: FontWeight.w700,
             //           ),),
             //           Text('\$295'),
             //         ],
             //       ),
             //       SizedBox(
             //         width: 250,
             //       ),
             //       ElevatedButton(onPressed: (){}, child: Text('Checkout')),
             //     ],
             //   ),
             // )


     ],
      ),


    );
  }
}
