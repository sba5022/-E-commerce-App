import 'package:appbar/Presentation/ui/screens/home_screen.dart';
import 'package:appbar/Presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:appbar/Widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: MaterialButton(
          onPressed:(){
            Get.to(MainBottomNavScreen());
          } ,
            child: Icon(Icons.arrow_back)),
        title: Text('Categories', style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
            itemCount: 16,
            itemBuilder: ( context, index){
          return FittedBox(child: CategoryCard());
        } ),
      )
    );
  }
}
