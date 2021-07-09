import 'dart:html';

import 'package:bat/CarouselDemo.dart';
import 'package:bat/CategoriesCollection.dart';
import 'package:bat/Dealsoftheday.dart';
import 'package:bat/Single_brand_promotion.dart';
import 'package:flutter/material.dart';

//Feed page with a collection of multiple Widgets
class FeedWidgetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: 1,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Flexible(
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
                    "Clothing",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w100,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 300,
                    color: Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext contex, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            child: Container(
                              height: 250,
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
                              child: Text("2237dsh fkhdksha"),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Sports",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w100,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 300,
                    color: Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext contex, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            child: Container(
                              height: 250,
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
                              child: Text("2237dsh fkhdksha"),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Outlet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w100,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 300,
                    color: Colors.white,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext contex, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 15),
                            child: Container(
                              height: 250,
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
                              child: Text("2237dsh fkhdksha"),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                ]));
  }
}
