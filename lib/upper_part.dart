import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class UpperPart extends StatefulWidget {
  @override
  _UpperPartState createState() => _UpperPartState();
}

class _UpperPartState extends State<UpperPart> {
  CarouselSlider carouselSlider;

  int _current = 0;
  List imgList = [
    'https://images-na.ssl-images-amazon.com/images/I/31mNRbVf2AL.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/717LhMH5CbL._UL1500_.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/91JTuwVaGOL._UL1500_.jpg',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Container(
        color: Colors.white,
        height: 370,
        width: MediaQuery.of(context).size.width,
        child: Stack(
            children:  <Widget>[
              ////////////////////////////////////////////////////////////////////////////
             carouselSlider = CarouselSlider(
                height: 400.0,initialPage: 0,
               onPageChanged: (index) {
                 setState(() {
                   _current = index;
                 });
               },
                items: [
                  'https://images-na.ssl-images-amazon.com/images/I/31mNRbVf2AL.jpg',
                  'https://images-na.ssl-images-amazon.com/images/I/717LhMH5CbL._UL1500_.jpg',
                  'https://images-na.ssl-images-amazon.com/images/I/91JTuwVaGOL._UL1500_.jpg',
                  'https://images-na.ssl-images-amazon.com/images/I/717LhMH5CbL._UL1500_.jpg',
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.transparent
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 30,top: 15),
                            child: Image.network("$i"),
                          ),

                      );
                    },
                  );
                }).toList(),

              ),
////////////////////////////////////////////////////////////////////////////
//               Center(
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 30),
//                   child: Container(
//                     height: 330,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.transparent,
//                   ),
//                 ),
//               ),
////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: Align(
                  alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){
                        carouselSlider.nextPage(
                          duration: Duration(milliseconds: 1),curve: Curves.linear
                        );
                      },
                        child: Icon(Icons.navigate_next,size: 40,))),
              ),
              ////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: (){
                        carouselSlider.previousPage(
                          duration: Duration(milliseconds: 1),curve: Curves.linear
                        );
                      },
                        child: Icon(Icons.navigate_before,size: 40,))),
              ),
////////////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(imgList, (index, url) {
                      return _current == index ? Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Container(
                          width: 30.0,
                          height: 5.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color:  Colors.black,
                          ),
                        ),
                      ) : Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: Container(
                          width: 10.0,
                          height: 5.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.grey,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              ////////////////////////////////////////////////////////////////////////////

            ]
        ),
      ),
    );
  }
  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
