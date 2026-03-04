import 'package:flutter/material.dart';
import 'package:mad/screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(child: Image.asset("assets/images/beltei_iu.png", height: 200, width: 200,), ),
            Padding(padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple
                  ),
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "/mainScreen");
                  }, child: Text("Get Start", style: TextStyle(color: Colors.white),)),
            ),),
          ],
        )
      ),
    );
  }
}
