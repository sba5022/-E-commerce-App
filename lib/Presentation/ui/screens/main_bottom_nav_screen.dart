import 'package:appbar/Presentation/ui/screens/cart_screen.dart';
import 'package:appbar/Presentation/ui/screens/category_list_screen.dart';
import 'package:appbar/Presentation/ui/screens/home_screen.dart';
import 'package:appbar/Presentation/ui/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
int _selectedIndex=0;
  final List<Widget> _screens=[
    const HomeScreen(),
    const CategoryListScreen(),
    const CartScreen(),
    const WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
        return Scaffold(
        body: _screens[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: (int index){
                _selectedIndex= index;
                if (mounted){
                  setState(() {
                  });
                }
              },
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              elevation: 4,
              items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: 'Wishlist'),
          ]),
        );


  }
}
