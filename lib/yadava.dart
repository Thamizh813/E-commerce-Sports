import 'package:bat/CategoriesCollection.dart';
import 'package:bat/home/account.dart';

import 'package:bat/home/football.dart';
import 'package:bat/home/footer.dart';
import 'package:bat/home/notificationtest.dart';
import 'package:bat/homewithsign/catwithhome.dart';

import 'package:bat/main.dart';
import 'package:flutter/material.dart';

import 'CarouselDemo.dart';
import 'addtocart.dart';
import 'home/cricket.dart';
import 'home/signin.dart';
//import 'package:bat/sports/cricket.dart';

class SportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          titleSpacing: -2.0,
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: new Text('Nike',
              style: new TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Billabong',
                  fontWeight: FontWeight.w100,
                  fontSize: 30.0)),

          //App title with left padding

          iconTheme: new IconThemeData(color: Colors.white),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 1050),
                child: Image.asset(
                  'lib/assets/Nikes.jpg',
                  height: 40,
                  width: 60,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15, right: 10),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  "Log out",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            new IconButton(
                icon: new Icon(Icons.notifications),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => notifytext()));
                }),
            // new IconButton(
            //     icon: new Icon(Icons.shopping_cart),
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => Addtocart('', '', '')));
            //     }),
            new IconButton(
                icon: new Icon(Icons.account_circle_outlined),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Accountresult()));
                }),
          ],
        ),
        drawer: Draw1(),
        body: Column(children: [
          Container(
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  color: Colors.black,
                  child: CategoriesCollection2(),
                ),
                Container(
                    color: Colors.black,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/notifications");
                      },
                      color: Colors.black,
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          new Padding(
                            padding: const EdgeInsets.all(0.0),
                          ),
                          new Text('Search for Products, Brands and More',
                              textAlign: TextAlign.center,
                              style: new TextStyle(color: Colors.grey))
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Flexible(
            child: ListView(children: [
              Flexible(
                child: new Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: new Container(
                        alignment: Alignment.bottomCenter,
                        height: 400.0,
                        child: new Center(child: new CarouselDemo()),
                        color: Colors.white)),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Cricket",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    fontFamily: 'raleway'),
              ),
              SizedBox(
                height: 30,
              ),
              Cricketmain(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Football",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 35,
                    fontFamily: 'raleway'),
              ),
              SizedBox(
                height: 30,
              ),
              Football(),
              // Text(
              //   "Sports shoes",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       color: Colors.grey,
              //       fontWeight: FontWeight.w500,
              //       fontSize: 35,
              //       fontFamily: 'raleway'),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // Cricketmainshoe(),
              // SizedBox(
              //   height: 30,
              // ),
              // Text(
              //   "Women Clothing",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       color: Colors.grey,
              //       fontWeight: FontWeight.w500,
              //       fontSize: 35,
              //       fontFamily: 'raleway'),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // WomenMain(),
              // SizedBox(
              //   height: 30,
              // ),
              // Text(
              //   "Shoes",
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       color: Colors.grey,
              //       fontWeight: FontWeight.w500,
              //       fontSize: 35,
              //       fontFamily: 'raleway'),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // Shoemain(),
              // SizedBox(
              //   height: 50,
              // ),
              Footer(),
            ]),
          ),
        ]));
  }
}
