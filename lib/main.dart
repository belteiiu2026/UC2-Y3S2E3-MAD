

import 'package:flutter/material.dart';
import 'package:mad/home_screen.dart';

void main(){

  // Single-Child
  // Control
  final hi = Text("Hi, MAD", style: TextStyle(fontSize: 30),);
  // Layout
  final layout = Center(
      child: hi,
  );

  // Multi-Child

  List<Widget> itemsList = List.generate(10, (i) {
    return ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Product"),
              subtitle: Text("1\$"),
              trailing: Icon(Icons.shopping_cart),
          );
  }).toList();

  final items = ListView(
    children: itemsList
  );

  // Grid
  final gridDemo = GridView.count(

      crossAxisCount: 3,
      children: List.generate(30, (i){
        return Icon(Icons.favorite, size: 20,);
      }).toList()
  );

  // Create Screen
  final screen = Scaffold(
    body: gridDemo,
  );

    // Create App
  final app = MaterialApp(
    home: HomeScreen(),
  );

  // Run App
  runApp(app);
}
