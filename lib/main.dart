import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: false,
              expandedHeight: 200,
              backgroundColor: Colors.red ,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Sliver AppBar Demo"),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([
              addDetails("One", "This is one"),
              addDetails("Two", "This is Two"),
              addDetails("Three", "This is Three"),
              addDetails("Four", "This is Four"),
              addDetails("Five", "This is Five"),
              addDetails("Six", "This is Six"),
              addDetails("Seven", "This is Seven"),
              addDetails("Eight", "This is Eight"),
              addDetails("Nine", "This is Nine"),
              addDetails("Ten", "This is Ten"),
              addDetails("One", "This is one"),
              addDetails("Two", "This is Two"),
              addDetails("Three", "This is Three"),
              addDetails("Four", "This is Four"),
              addDetails("Five", "This is Five"),
              addDetails("Six", "This is Six"),
              addDetails("Seven", "This is Seven"),
              addDetails("Eight", "This is Eight"),
              addDetails("Nine", "This is Nine"),
              addDetails("Ten", "This is Ten")
            ]))
          ],
        ),
      ),
    );
  }
}

Widget addDetails(String title, String description){
    return ListTile(
      title: Text(title),
      subtitle: Text(description),
      leading: CircleAvatar(
        child: Text(title[0]),
      ),
    );
}


