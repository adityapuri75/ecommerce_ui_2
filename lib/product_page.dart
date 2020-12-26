import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:starfx/upper_part.dart';

import 'add_to_basket.dart';
import 'bottom_part.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16,right: 18),
            child: Text("Shirt E3",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          )
        ],
      ),
      body: Column(
        children: [
          UpperPart(),
          BottomPart(),
        ],
      ),
      bottomNavigationBar: BasketButton(),
    );
  }
}
