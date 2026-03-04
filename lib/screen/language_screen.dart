import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {

  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  @override
  Widget build(BuildContext context) {

    bool _isKhmer =  ModalRoute.of(context)!.settings.arguments as bool;
    print("_isKhmer : $_isKhmer");

    return Scaffold(
      appBar: AppBar(
        title: Text("Language"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Khmer"),
            subtitle: Text("Language"),
            trailing: Checkbox(value: _isKhmer, onChanged: (v){
              setState(() {
                _isKhmer = true;
              });
              Navigator.pop(context, _isKhmer);
            }),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("English"),
            subtitle: Text("Language"),
            trailing: Checkbox(value: !_isKhmer, onChanged: (v){
                setState(() {
                  _isKhmer = false;
                });
                Navigator.pop(context, _isKhmer);
            }),
          ),
          Divider()
        ],
      ),
    );
  }
}
