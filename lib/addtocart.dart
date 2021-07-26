import 'package:flutter/material.dart';

class Addtocart extends StatelessWidget {
  Addtocart(this.itemname, this.price, this.image) : super();
  final String? itemname;
  final String? price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.black,
      ), //AppBar

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue[50],
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 2),
                    spreadRadius: 3,
                    blurRadius: 2),
              ],
              borderRadius: BorderRadius.circular(15)),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1, 2),
                        spreadRadius: 3,
                        blurRadius: 2),
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                image.toString(),
                height: 200,
                width: 240,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 100,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      itemname.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("In-Stock",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600)),
                    Text("Itemcount :  1",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600)),
                    Text("INR : ${price.toString()}",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600))
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
