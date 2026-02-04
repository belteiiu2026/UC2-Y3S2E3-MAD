import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future<List<String>> _loadProducts() async {
      await Future.delayed(Duration(seconds: 2));

      // throw("This is Error");

      List<String> products = List.generate(10, (i) => "Product $i").toList();
      return products;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Hi, MAD"),
        elevation: 0.5,
        centerTitle: false,
      ),
      body: FutureBuilder(
          future: _loadProducts(),
          builder: (BuildContext context, AsyncSnapshot snapshot ){
            // Case In-Progress
            if(snapshot.connectionState != ConnectionState.done){
                return Center(
                  child: CircularProgressIndicator(),
                );
            }
            // Case Error
            if(snapshot.hasError){
              return Center(
                child: Text("Error ${snapshot.error}"),
              );
            }

            // No Data
            if(!snapshot.hasData){
              return Center(
                child: Text("No Data Found"),
              );
            }
            // Has Data

            List<String> data = snapshot.data;
            return ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index){
                    String product = data[index];
                    return ListTile(
                      title: Text("$product"),
                      subtitle: Text("1\$"),
                      leading: Icon(Icons.favorite),
                      trailing: Icon(Icons.navigate_next),
                    );

                });
          })
    );
  }
}
