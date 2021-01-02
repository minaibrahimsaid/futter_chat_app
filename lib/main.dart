import 'package:flutter/material.dart';
import 'screens/Home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat ui ',
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor:Color(0xFFFFEF9EB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
