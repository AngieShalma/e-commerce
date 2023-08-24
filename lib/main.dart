import 'package:camp_code_project/screens/profile_screen.dart';
import 'package:camp_code_project/screens/rate_product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: rateProductScreen(),
    );
  }
}

