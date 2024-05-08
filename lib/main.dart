import 'package:app/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Real Estate App",
      home: Home(),
      theme: ThemeData(
        textTheme: TextTheme(
          bodySmall: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),
      ),
    );
  }
}
