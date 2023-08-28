import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:grocery_app/items/cart.dart';
import 'package:grocery_app/items/categories.dart';
import 'package:grocery_app/items/favourite.dart';
import 'package:grocery_app/items/homescreen.dart';
import 'package:grocery_app/items/profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 1;

  final List<dynamic> _screens = [
    const HomeScreen(),
    const CategoryPart(),
    const Cart(),
    const Favourite(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: _currentIndex,
            animationDuration: const Duration(microseconds: 100000),
            backgroundColor: Colors.orange,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            letIndexChange: (index) => true,
            items: const [
              Icon(
                Icons.home,
              ),
              Icon(
                Icons.directions,
              ),
              Icon(Icons.category_rounded),
              Icon(Icons.favorite),
              Icon(Icons.person),
            ]),
        backgroundColor: Colors.grey.shade100,
        body: _screens[_currentIndex]);
  }
}
