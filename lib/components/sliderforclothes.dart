import 'package:bat/home/payment.dart';
import 'package:bat/home/signin.dart';
import 'package:flutter/material.dart';

import '../addtocart.dart';

class Slider1 extends StatefulWidget {
  Slider1(this.name) : super();
  final List<Map<String, Object>> name;

  @override
  _Slider1State createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  int _one = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 300,
        color: Colors.white,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.name.length,
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
                                    widget.name[index]['image'].toString(),
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
                                          widget.name[index]['itemname']
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
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _one = 1;
                                                });
                                              },
                                              child: Card(
                                                color: Colors.blue[50],
                                                elevation: 15,
                                                child: Container(
                                                  height: 30,
                                                  width: 80,
                                                  alignment: Alignment.center,
                                                  child: Text("small",
                                                      style: TextStyle(
                                                        letterSpacing: 2,
                                                      )),
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
                                                child: Text(
                                                  "medium",
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
                                                child: Text("large",
                                                    style: TextStyle(
                                                        letterSpacing: 2)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        if (_one == 1)
                                          Text("Selected size : Small"),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "₹ ${widget.name[index]['itemprice'].toString()}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              letterSpacing: 2),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        GestureDetector(
                                          excludeFromSemantics: true,
                                          onTap: () {
                                            print(widget.name[index]['itemname']
                                                .toString());
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Addtocart(
                                                          widget.name[index]
                                                                  ['itemname']
                                                              .toString(),
                                                          widget.name[index]
                                                                  ['itemprice']
                                                              .toString(),
                                                          widget.name[index]
                                                                  ['image']
                                                              .toString(),
                                                        )));
                                          },
                                          child: Container(
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
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        GestureDetector(
                                          excludeFromSemantics: true,
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MySample(
                                                            widget.name[index]
                                                                    ['image']
                                                                .toString(),
                                                            widget.name[index]
                                                                    ['itemname']
                                                                .toString(),
                                                            widget.name[index][
                                                                    'itemprice']
                                                                .toString())));
                                          },
                                          child: Container(
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
                                widget.name[index]['image'].toString(),
                                height: 200,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "₹ ${widget.name[index]['itemprice'].toString()}",
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
    ]);
  }
}
