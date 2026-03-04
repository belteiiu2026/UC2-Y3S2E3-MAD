import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  bool _isKhmer = true;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white),),
        elevation: 0.5,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Sok Chan"),
            subtitle: Text("Username"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.light_mode),
            title: Text("Light"),
            subtitle: Text("Theme"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.language),
              title: Text("${_isKhmer ? "Khmer" : "English"}"),
              subtitle: Text("Language"),
              trailing: Icon(Icons.navigate_next),
            ),
            onTap: () async {
               final isKhmer  = await Navigator.pushNamed(context, "/languageScreen", arguments: _isKhmer);
               print("isKhmer : $isKhmer");
               setState(() {
                 _isKhmer = isKhmer as bool;
               });
            },
          ),
          Divider(),
        ],
      )
    );
  }
}
