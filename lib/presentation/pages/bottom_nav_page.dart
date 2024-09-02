
import 'package:flutter/material.dart';

import 'categories_page.dart';
import 'favorite_food_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        currentIndex: selectedTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite')
        ],
        onTap: (i) {
          print(i);
          setState(() {
            selectedTab = i;
          });
        },
      ),
      body: selectedTab == 0 ? Categories() : FavoriteFood(),
    );
  }
}
