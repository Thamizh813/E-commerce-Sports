import 'package:bat/clothes.dart';
import 'package:bat/main.dart';
import 'package:bat/yadava.dart';
import 'package:flutter/material.dart';

class CategoriesCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return new Container(
      alignment: Alignment.centerLeft,
      width: 1000,
      color: Colors.black,
      height: deviceSize.height * 0.1,
      child: new ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            alignment: Alignment.centerLeft,
            height: 90.0,
            color: Colors.black,
            child: new FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: new Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 12, left: 100, right: 70),
                  child: SingleChildScrollView(
                    child: new Column(
                      children: <Widget>[
                        new Icon(Icons.home, color: Colors.white),
                        new Padding(padding: new EdgeInsets.only(bottom: 3.0)),
                        new Text("Home",
                            textAlign: TextAlign.center,
                            style: new TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                )),
          ),
          new Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: new FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClothingPage()));
              },
              child: new Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 70),
                child: SingleChildScrollView(
                  child: new Column(
                    children: <Widget>[
                      new Icon(Icons.shopping_bag_rounded, color: Colors.white),
                      new Padding(padding: new EdgeInsets.only(bottom: 2.0)),
                      new Text("Clothing",
                          textAlign: TextAlign.center,
                          style: new TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: new FlatButton(
              onPressed: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SportsPage()));
              },
              child: new Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 70),
                child: SingleChildScrollView(
                  child: new Column(
                    children: <Widget>[
                      new Icon(Icons.sports_football, color: Colors.white),
                      new Padding(padding: new EdgeInsets.only(bottom: 2.0)),
                      new Text("sports",
                          textAlign: TextAlign.center,
                          style: new TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            color: Colors.black,
            child: new FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/cart");
              },
              child: new Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 70),
                child: SingleChildScrollView(
                  child: new Column(
                    children: <Widget>[
                      new Icon(Icons.outlet, color: Colors.white),
                      new Padding(padding: new EdgeInsets.only(bottom: 2.0)),
                      new Text("Outlet",
                          textAlign: TextAlign.center,
                          style: new TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
