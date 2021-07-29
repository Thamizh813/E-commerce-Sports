import 'package:bat/home/payment.dart';
import 'package:bat/main.dart';
import 'package:flutter/material.dart';

class Addtocart extends StatelessWidget {
  Addtocart(this.itemname, this.price, this.image) : super();
  final String? itemname;
  final String? price;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.black,
      ), //AppBar

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 400,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Row(children: [
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
                width: 100,
              ),
              Column(children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  itemname.toString(),
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("In-Stock",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 20,
                ),
                Text("Itemcount :  1",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 20,
                ),
                Text("INR : ${price.toString()}",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MySample()));
                  },
                  child: Container(
                    height: 60,
                    width: 220,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen[300],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(-1, 2),
                              spreadRadius: 2,
                              blurRadius: 4)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart),
                        Text("     Shop Now")
                      ],
                    ),
                  ),
                ),
              ]),
              SizedBox(
                width: 400,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  height: 60,
                  width: 220,
                  decoration: BoxDecoration(
                      color: Colors.redAccent[100],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(-1, 2),
                            spreadRadius: 2,
                            blurRadius: 4)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cancel),
                      Text("     Remove from cart")
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
