import 'package:flutter/material.dart';
import 'package:tiny_cloud_app/home_page.dart';
import 'package:tiny_cloud_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
    );
  }
}

