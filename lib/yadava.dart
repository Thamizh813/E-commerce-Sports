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

class Cricketmaterial extends StatelessWidget {
  Cricketmaterial(this.cricketmaterial) : super();
  final List<Map<String, Object>> cricketmaterial;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 300,
        color: Colors.white,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cricketmaterial.length,
            itemBuilder: (BuildContext contex, index) {
              return InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 100, horizontal: 392),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 2),
                                    spreadRadius: 2,
                                    blurRadius: 10)
                              ]),
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  height: 300,
                                  width: 220,
                                  child: Image.network(
                                    cricketmaterial[index]['image'].toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Container(
                                  width: 450,
                                  decoration: (BoxDecoration(
                                      color: Colors.grey.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(15))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 50),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 60),
                                        Text(
                                          cricketmaterial[index]['itemname']
                                              .toString(),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 35,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        Text(
                                          "In-Stock",
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w200),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Card(
                                              color: Colors.blue[50],
                                              elevation: 15,
                                              child: Container(
                                                height: 30,
                                                width: 80,
                                                alignment: Alignment.center,
                                                child: Text("Red",
                                                    style: TextStyle(
                                                        letterSpacing: 2)),
                                              ),
                                            ),
                                            Card(
                                              color: Colors.blue[50],
                                              elevation: 15,
                                              child: Container(
                                                height: 30,
                                                width: 80,
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "White",
                                                  style: TextStyle(
                                                      letterSpacing: 2),
                                                ),
                                              ),
                                            ),
                                            Card(
                                              color: Colors.blue[50],
                                              elevation: 15,
                                              child: Container(
                                                height: 30,
                                                width: 80,
                                                alignment: Alignment.center,
                                                child: Text("Pink",
                                                    style: TextStyle(
                                                        letterSpacing: 2)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "₹ ${cricketmaterial[index]['itemprice'].toString()}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              letterSpacing: 2),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue[300],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              border: Border.all(
                                                  color: Colors.white),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black26,
                                                    offset: Offset(-1, 2),
                                                    spreadRadius: 2,
                                                    blurRadius: 4)
                                              ]),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.shopping_cart),
                                              Text("     Add to Cart")
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.lightGreen[300],
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              border: Border.all(
                                                  color: Colors.white),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black26,
                                                    offset: Offset(-1, 2),
                                                    spreadRadius: 2,
                                                    blurRadius: 4)
                                              ]),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.shopping_cart),
                                              Text("     Shop Now")
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Container(
                      height: 350,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                offset: Offset(1, 2),
                                spreadRadius: 2,
                                blurRadius: 10)
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              child: Image.network(
                                cricketmaterial[index]['image'].toString(),
                                height: 200,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "₹ ${cricketmaterial[index]['itemprice'].toString()}",
                              style: TextStyle(
                                  color: Colors.deepOrange, fontSize: 15),
                            ),
                          )
                        ],
                      )),
                ),
              );
            }),
      ),
    );
  }
}
