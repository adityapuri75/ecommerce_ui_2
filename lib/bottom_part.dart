import 'package:flutter/material.dart';

class BottomPart extends StatefulWidget {
  @override
  _BottomPartState createState() => _BottomPartState();
}

class _BottomPartState extends State<BottomPart> {
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  bool tap4 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
          color: Color(0xffd9d9d9),
           child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1.5,bottom: 1.5,right: 1.5),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 28,left: 25),
                      child: Text("Size (US):",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                    color: Colors.white,
                    height: 75,
                    width: MediaQuery.of(context).size.width/2,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 1.5,bottom: 1.5,right: 1.5),
                          child: Container(
                            child: Center(child: Text("5",style: TextStyle(fontSize: 20),)),
                            color: Colors.white,
                            height: 75,
                            width: MediaQuery.of(context).size.width/6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.5,bottom: 1.5,right: 1.5),
                          child: Container(
                            child: Center(child: Text("7",style: TextStyle(fontSize: 20),)),
                            color: Colors.white,
                            height: 75,
                            width: MediaQuery.of(context).size.width/6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.5,bottom: 1.5,right: 1.5),
                          child: Container(
                            child: Center(child: Text("8",style: TextStyle(fontSize: 20),)),
                            color: Colors.white,
                            height: 75,
                            width: MediaQuery.of(context).size.width/6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.5,bottom: 1.5,right: 1.5),
                          child: Container(
                            child: Center(child: Text("6",style: TextStyle(fontSize: 20),)),
                            color: Colors.white,
                            height: 75,
                            width: MediaQuery.of(context).size.width/6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

        ),
        Padding(
          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Color:",style: TextStyle(fontSize: 18),),
                Row(
                  children: [
                    Stack(
                      children: [
                        Padding(
                        padding: const EdgeInsets.only(top: 3,right: 3),
                        child: GestureDetector(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: tap1 == true ? Color(0xffe6e6e6) : Colors.white,

                            ),
                          ),


                        ),

                      ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                tap4 = false;
                                tap1 = ! tap1;
                                tap2 = false;
                                tap3 = false;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,

                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                    Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3,right: 3),
                            child: GestureDetector(
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: tap2 == true ? Color(0xffe6e6e6) : Colors.white,

                                ),
                              ),


                            ),

                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  tap4 = false;
                                  tap1 = false;
                                  tap2 = ! tap2;
                                  tap3 = false;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.pink,

                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3,right: 3),
                            child: GestureDetector(
                              child: GestureDetector(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: tap3 == true ? Color(0xffe6e6e6) : Colors.white,

                                  ),
                                ),
                              ),


                            ),

                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  tap4 = false;
                                  tap1 = false;
                                  tap2 = false;
                                  tap3 = ! tap3;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellow,

                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                    Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3,right: 3),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: tap4 == true ? Color(0xffe6e6e6) : Colors.white,

                              ),
                            ),

                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  tap4 = ! tap4;
                                  tap1 = false;
                                  tap2 = false;
                                  tap3 = false;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blueAccent,

                                ),
                              ),
                            ),
                          ),
                        ]
                    ),



                  ],
                )
              ],
            ),
          ),
        ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Composition",style: TextStyle(fontSize: 18),),
                  Text("100% Silk",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Price:",style: TextStyle(fontSize: 18),),
                  Text("\$ 349.99",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
