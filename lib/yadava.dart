import 'package:bat/CategoriesCollection.dart';
import 'package:bat/home/cricketshoes.dart';
import 'package:bat/home/footer.dart';
import 'package:bat/home/shoes.dart';
import 'package:bat/home/women.dart';
import 'package:bat/main.dart';
import 'package:flutter/material.dart';

import 'home/cricket.dart';
//import 'package:bat/sports/cricket.dart';

class SportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Sports",
            style: TextStyle(
              fontFamily: 'raleway',
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        drawer: Draw(),
        body: Column(children: [
          Container(
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  color: Colors.black,
                  child: CategoriesCollection(),
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
              SizedBox(
                height: 30,
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
                "Sports shoes",
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
              Cricketmainshoe(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Women Clothing",
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
              WomenMain(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Shoes",
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
              Shoemain(),
              SizedBox(
                height: 50,
              ),
              Footer(),
            ]),
          ),
        ]));
  }
}
