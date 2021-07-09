import 'package:bat/CarouselDemo.dart';
import 'package:bat/home/clothing.dart';
import 'package:bat/home/footer.dart';

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
                  Clothing(),
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
                  Clothing(),
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
                  Clothing(),
                  SizedBox(
                    height: 50,
                  ),
                  Footer(),
                ]));
  }
}
