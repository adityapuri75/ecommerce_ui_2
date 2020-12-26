import 'package:flutter/material.dart';

class BasketButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25,left: 10,right: 10),
        child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(25)
        ),
          child: Center(child: Text("Add to basket",style: TextStyle(fontSize: 22,color: Colors.white),)),
        ),
      ),
    );
  }
}
