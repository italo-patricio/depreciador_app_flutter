import 'package:flutter/material.dart';
import 'package:deprecianao/pages/HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DepreciaNão',
      theme: ThemeData(
       fontFamily: "Times New Roman", 
       primarySwatch: Colors.orange,
       backgroundColor: Colors.pinkAccent,
       bottomAppBarColor: Colors.white,
       primaryColor: Colors.white 
      ),
      routes: {
        '/': (_) => HomePage()
      },
    );
  }
}
