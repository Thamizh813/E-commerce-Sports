import 'package:bat/CategoriesCollection.dart';
import 'package:bat/FeedWidgetList.dart';
import 'package:bat/categoriescollectiononlyhome.dart';
import 'package:bat/homewithsign/FeedWidgetList.dart';
import 'package:bat/homewithsign/catwithhome.dart';
import 'package:flutter/material.dart';

class Feed_body1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.black,
          child: SingleChildScrollView(
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
                        // Navigator.of(context).pushNamed("/notifications");
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
        ),
        new Flexible(
          child: FeedWidgetList1(),
        ),
      ],
    );
  }
}
