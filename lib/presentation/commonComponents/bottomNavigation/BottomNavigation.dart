import 'package:flutter/material.dart';
import 'package:simple_food_app/presentation/categoriesScreen/CategoriesScreen.dart';
import 'package:simple_food_app/presentation/commonComponents/drawer/MainDrawer.dart';

import '../../favouriteScreen/FavouriteScreen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  var _selectedPage = 0;
  final List<Map<String, dynamic>> _list = [
    {'page': const CategoriesScreen(), 'title': 'Categories'},
    {'page': const FavouriteScreen(), 'title': 'Favourites'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(_list[_selectedPage]['title'])),
      drawer:  MainDrawer(
        handleClicks: (index){
          setState(() {
            _selectedPage = index;
          });
        },
      ),
      body: _list[_selectedPage]['page'],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPage,
        onTap: (index) {
          setState(() {
            _selectedPage = index;
          });
        },
        backgroundColor: Colors.deepOrangeAccent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: "Favorite",
          ),
        ],
      ),
    );
  }
}
