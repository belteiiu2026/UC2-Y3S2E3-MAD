import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

    int _indexSelectedItems = 0;


    List<Widget> screen = [
       Center(
         child: Text( "Home"),
       ),
      Center(
        child: Text( "Favorite"),
      ),
      Center(
        child: Text( "Notification"),
      ),
      Center(
        child: Text( "Profile"),
      )
    ];

    void _onTabClick(int index){
      setState(() {
        _indexSelectedItems = index;
      });
    }


  @override
  Widget build(BuildContext context) {

    List<BottomNavigationBarItem> bottomNavBarItems = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.blue),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
      BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Profile")
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
