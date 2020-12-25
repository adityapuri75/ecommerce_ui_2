import 'package:flutter/material.dart';
import 'package:starfx/mainscreen.dart';
import 'package:starfx/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Puri Fast Food",
      theme: ThemeData(
        primaryColor: Colors.white,

      ),
      home: ProductDetail(),
    );

  }
}
