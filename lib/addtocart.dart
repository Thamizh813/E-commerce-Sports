import 'package:flutter/material.dart';

class Addtocart extends StatelessWidget {
  Addtocart(this.itemname, this.price) : super();
  final String? itemname;
  final String? price;

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
    );
  }
}
