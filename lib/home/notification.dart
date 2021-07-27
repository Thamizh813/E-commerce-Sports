import 'package:flutter/material.dart';

class Notify extends StatelessWidget {
  Notify(this.name) : super();
  final List<Map<String, Object>> name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Notifications'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1, 2),
                              spreadRadius: 3,
                              blurRadius: 2),
                        ],
                        borderRadius: BorderRadius.circular(15)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          new Icon(
                            Icons.notifications,
                            size: 30,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(name[index]['text'].toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
