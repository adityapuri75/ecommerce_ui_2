import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:starfx/product_data.dart';

import 'Bought_products.dart';


class MainScreen extends StatefulWidget {
  int count = 0;
  @override
  _MainScreenState createState() => _MainScreenState();
}


class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            backgroundColor: Color(0xffa9a6a8),
            appBar: AppBar(
              elevation: 0,
              leading: Icon(Icons.arrow_back_ios),
              title: Text("Zirkon"),
              centerTitle: true,
              actions: [Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.menu_open_rounded, size: 30,),
              )
              ],
              bottom: TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Color.fromRGBO(119, 119, 119, 1),
                indicatorWeight: 5.0,
                labelColor: Colors.black,
                isScrollable: true,
                tabs: <Tab>[
                  new Tab(
                    child: Text(
                      "New arrivals",
                      style: TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Tab(
                    child: Text(
                      "New arrivals",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  new Tab(
                    child: Text(
                      "New arrivals",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "New arrivals",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "New arrivals",
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 2, left: 2, right: 2),
              child: GridView.count(
                childAspectRatio: (1 / 1.4),
                crossAxisCount: 2,
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 1.5,
                children:
                  products.map(_boughtProducts).toList(),
              ),
            ),
            // bottomNavigationBar: NavBar(),
            bottomNavigationBar: BottomNavigationBar(

              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu, size: 30,
                        color: Color.fromARGB(255, 0, 0, 0)),
                    title: new Text('Home')
                ),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Icon(Icons.search, size: 30, color: Colors.black,),
                    ),
                    title: new Text('')
                ),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Icon(Icons.bookmark_border, size: 30,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    title: new Text('')
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        Icons.settings, color: Color.fromARGB(255, 0, 0, 0)),
                    title: new Text('')
                )
              ],

            ),
            floatingActionButtonLocation: FloatingActionButtonLocation
                .centerDocked,
            floatingActionButton: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              color: Colors.white,
              child: new FloatingActionButton(
                backgroundColor: Colors.white,
                elevation: 0,
                child: new Icon(
                  Icons.shopping_bag_outlined, color: Colors.black,),
              ),
            )
        )

    );
  }

  Widget _boughtProducts(Products products) {
    return Container(
      child: Product(name: products.name,price: products.price,imagePath: products.imagePath,),
    );
  }
}
