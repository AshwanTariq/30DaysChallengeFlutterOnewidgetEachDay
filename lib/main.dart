import 'package:flutter/material.dart';
import 'package:flutter_project/day1/day1_quantity_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '30 Days Challenge',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Add Quantity'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Incrementor(
                onchangedCallback: (result){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$result David's Perfume"),duration: Duration(milliseconds: 200),));
            }, text: "David's Perfume"),
            Incrementor(
              onchangedCallback: (result){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$result Breakfast Dosage"),duration: Duration(milliseconds: 200),));
              }, text: "Breakfast Dosage",borderRadius: 15,borderWidth: 4,),
            Incrementor(
              onchangedCallback: (result){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$result lays"),duration: Duration(milliseconds: 200),));
              }, text: "lays",borderRadius: 0,borderWidth: 4,borderColor: Colors.blue,),


          ],
        ),
      ),
    );
  }
}


