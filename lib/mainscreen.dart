import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios),
          title: Text("Zirkon"),
          centerTitle: true,
          actions: [Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.add_shopping_cart),
          )],
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
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
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
          padding: const EdgeInsets.only(top: 2,left: 2,right: 2),
          child: GridView.count(
            childAspectRatio: (1 / 1.4),
           crossAxisCount: 2,
            crossAxisSpacing: 1.5,
            mainAxisSpacing: 1.5,
            children: <Widget>[
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
              Product(),
            ],
          ),
        ),


      ),
    );
  }

  Widget Product(){
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          ///////////////////////////////////////////////////////////////////////////////
          Container(
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
                  child: Image.network("https://images-na.ssl-images-amazon.com/images/I/31mNRbVf2AL.jpg")),
            ),
          ),


///////////////////////////////////////////////////////////////////////////////
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(22))
              ),
              height: 120,
              width: 40,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  Icon(Icons.remove,color: Colors.white,),
                  SizedBox(height: 17,),
                  Text("01",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 17,),
                  Icon(Icons.add,color: Colors.white,),

                ],

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
                    Text("\$ 299.5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(height: 4,),
                    Text("BackPack Smiley",style: TextStyle(color: Colors.grey),)
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
