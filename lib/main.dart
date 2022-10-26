import 'package:facebook_ui/screens/nav_screen.dart';
import 'package:facebook_ui/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fadybook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  NavScreen(),
    );
  }
}



