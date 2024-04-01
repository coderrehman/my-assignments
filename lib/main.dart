import 'package:flutter/material.dart';
import 'package:fmlms/splashscreen.dart';
import 'package:fmlms/productdetailpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splashscreen(),
      // home: Productdetailpage(),
    );
  }
}
