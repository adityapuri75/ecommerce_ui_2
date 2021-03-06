import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String name;
  final double price;
  final String imagePath;

  Product({this.imagePath,this.name,this.price});


  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _itemCount = 0;
  AnimationController _controller;




  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool selected = false;
  // int count = 0;
  @override
  Widget build(BuildContext context) {
    int count = 0;
    return Container(
      child: Stack(
        children: <Widget>[
          ///////////////////////////////////////////////////////////////////////////////
          Container(
            color: Colors.white,
            height: 700,
            width: 700,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Container(
              height: 200,
              width: 210,
              child: Align(
                  alignment: Alignment.center,
                  child: Image.network(widget.imagePath)),
            ),
          ),


///////////////////////////////////////////////////////////////////////////////

          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = true;
                });
              },
              onDoubleTap: (){
                setState(() {
                  selected = false;
                });
              },
              child: AnimatedContainer(
                constraints: BoxConstraints(maxHeight: 120),

                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(22))
                ),
                width: 40,
                height: selected ? 120 : 50,
                duration: Duration(milliseconds: 0),
                curve: Curves.fastOutSlowIn,
                child: selected ? Column( children: <Widget>[
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: ()=>setState(()=>_itemCount=_itemCount-1),
                      child: Icon(Icons.remove,color: Colors.white,)),
                  SizedBox(height: 17,),
                  Text(_itemCount.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 17,),
                  GestureDetector(
                    onTap: ()=>setState(()=>_itemCount=_itemCount+1),
                      child: GestureDetector(
                          onTap: ()=>setState(()=>_itemCount=_itemCount+1),
                          child: Icon(Icons.add,color: Colors.white,))),

                ],

                ): Icon(Icons.add,color: Colors.white,),
              ),
            ),
          ),

          ///////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 10),
            child: Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.bookmark_border)),
          ),
          ///////////////////////////////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(bottom: 12,left: 12),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("\$ "+widget.price.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Text(widget.name,style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
