import 'package:bat/addtocart.dart';
import 'package:bat/clothes.dart';
import 'package:bat/feed_body.dart';
import 'package:bat/home/account.dart';
import 'package:bat/home/accountnamepage.dart';

import 'package:bat/home/notificationtest.dart';
import 'package:bat/home/outlet.dart';
import 'package:bat/home/outlet70.dart';
import 'package:bat/homewithsign/feed_body.dart';
import 'package:bat/main.dart';

import 'package:bat/yadava.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

class HomePagewithsign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
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
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => notifytext()));
            },
            icon: Icon(Icons.notifications),
          ),
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
                    MaterialPageRoute(builder: (context) => Account()));
              }),
        ],
      ), //AppBar
      drawer: Draw1(),

      body: new Feed_body1(), //Feed body
    ); //Scaffold
  }
}
