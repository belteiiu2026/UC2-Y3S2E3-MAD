import 'package:flutter/material.dart';
import 'package:mad/screen/cart_screen.dart';
import 'package:mad/screen/favorite_screen.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/profile_screen.dart';
import 'package:mad/screen/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _indexSelectedItems = 0;

  List<Widget> screen = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  void _onTabClick(int index){
    print("Index : $index");
    setState(() {
      _indexSelectedItems = index;
    });
  }


  @override
  Widget build(BuildContext context) {

    List<BottomNavigationBarItem> bottomNavBarItems = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite", backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification", backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Profile", backgroundColor: Colors.blue)
    ];

    final bottomNavBar = BottomNavigationBar(
      fixedColor: Colors.amber,
      items: bottomNavBarItems,
      currentIndex: _indexSelectedItems,
      backgroundColor: Colors.blue,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 16,
      onTap: (index){
        _onTabClick(index);
      },
    );

    return Scaffold(
      body: screen.elementAt(_indexSelectedItems),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
