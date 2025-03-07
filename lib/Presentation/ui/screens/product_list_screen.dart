import 'package:appbar/Presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:appbar/Widgets/Product_Card.dart';
import 'package:appbar/Widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

        leading: MaterialButton(
            onPressed: (){
              Get.to(MainBottomNavScreen());
              },
            child: Icon(Icons.arrow_back)),
          title: Text('Category', style: TextStyle(color: Colors.black),),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: 16,
              itemBuilder: ( context, index){
                return FittedBox(child: ProductCard());
              } ),
        )
    );
  }
}
