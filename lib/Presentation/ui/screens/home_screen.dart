import 'package:appbar/Presentation/ui/screens/category_list_screen.dart';
import 'package:appbar/Presentation/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Widgets/Product_Card.dart';
import '../../../Widgets/category_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String>Photolist=[
    'assets/images/slider.png',
    'assets/images/woman.png',
    'assets/images/Boot.png',
  ];
  int myslideindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
       leading: Image.asset('assets/images/logo_nav.png'),
        title: Row(
          children: [
            Spacer(),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.person, color: Colors.grey),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.call, color: Colors.grey),
            ),
            SizedBox(width: 10,),
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.notifications_none, color: Colors.grey),
            ),
            SizedBox(width: 10,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
              ),
                      ),
                      ),
            ),
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: PageView.builder(
                  onPageChanged: (Value) {
                    setState(() {
                      myslideindex=Value;
                    });
                  },
                  itemCount: Photolist.length,
                    itemBuilder: (context, index){
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(Photolist[index],fit: BoxFit.cover,),
                  );
                }),
              ),
            ),
            Center(
              child: SizedBox(
                height: 55,
                width: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: Photolist.length,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: index==myslideindex?Colors.grey:Colors.black,
                            shape: BoxShape.circle,
                          ),
                          height: 20,
                          width: 20,
                        ),
                      );
                }),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            HomeSectionTitle(
              title: ' Categories',
              onTap: (){
                Get.to(CategoryListScreen());
              },
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                   return CategoryCard();
              }),

            ),
            SizedBox(
              height: 4,
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return CategoryCard();
                  }),

            ),
            SizedBox(
              height: 4,
            ),
            HomeSectionTitle(
              title: 'Popular',
              onTap: (){
                Get.to(ProductListScreen());
              },
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                return ProductCard();
              }),
            ),
            SizedBox(
              height: 4,
            ),
            HomeSectionTitle(
              title: 'Special',
              onTap: (){},
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return ProductCard();
                  }),
            ),
            SizedBox(
              height: 4,
            ),
            HomeSectionTitle(
              title: 'New',
              onTap: (){},
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return ProductCard();
                  }),
            ),
          ],
              ),
      ));

  }
}

class HomeSectionTitle extends StatelessWidget {
  const HomeSectionTitle({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(title, style: TextStyle(
            letterSpacing: 0.4,
            fontSize: 18,
            fontWeight: FontWeight.w700
          ),),
        ),
        TextButton(onPressed: onTap, child: Text('See All'),)
      ],
    );
  }
}

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key, required this.icon, required this.onTap,
  });
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,

      borderRadius: BorderRadius.circular(30),
  child:   Icon(icon, color: Colors.grey),
    );
  }
}
