import 'package:flutter/material.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/language_screen.dart';
import 'package:mad/screen/main_screen.dart';
import 'package:mad/screen/splash_screen.dart';

void main(){
  final app = App();
  runApp(app);
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Option 1
      // home: SplashScreen(),

      // Option 2
      routes: {
        "/" : (context) => SplashScreen(),
        "/mainScreen" : (context) => MainScreen(),
        "/languageScreen" : (context) => LanguageScreen()
      },

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
    );
    // Run App
  }
}
