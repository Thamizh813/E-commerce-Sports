import 'dart:html';
import 'dart:ui';

import 'package:bat/clothes.dart';
import 'package:bat/home/account.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String phone = '';

  String delivery1 = '';
  String delivery2 = '';

  final dobdateController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed

    dobdateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference account =
        FirebaseFirestore.instance.collection('account');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Account Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 600,
            width: 400,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Add Details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      phone = value;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter a phone number',
                      labelText: 'Phone',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      dobdateController.text = value;
                    },
                    controller: dobdateController,
                    readOnly: true,
                    onTap: () async {
                      var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      dobdateController.text = date.toString().substring(0, 10);
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Enter your date of birth',
                      labelText: 'Dob',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter your additional email',
                      labelText: 'e-mail',
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      delivery1 = value;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.delivery_dining),
                      hintText: 'Address 1',
                      labelText: 'Delivery address 1',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      delivery2 = value;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.delivery_dining),
                      hintText: 'Address 2',
                      labelText: 'Delivery address 2',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: RaisedButton(
                      onPressed: () {
                        if (name.isEmpty ||
                            delivery1.isEmpty ||
                            delivery2.isEmpty ||
                            dobdateController.text.isEmpty ||
                            phone.isEmpty ||
                            email.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Enter all the data",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM_LEFT,
                              timeInSecForIosWeb: 3,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        } else {
                          account
                              .add({
                                'name': name,
                                'phone': phone,
                                'email': email,
                                'delivery1': delivery1,
                                'delivery2': delivery2,
                                'dob': dobdateController.text,
                              })
                              .then((value) => print('details added'))
                              .catchError((error) => print('error in order'));

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Accountresult()));
                          if (_formKey.currentState!.validate()) {
                            print('valid!');
                          } else {
                            print('invalid!');
                          }
                        }
                      },
                      color: Colors.black,
                      child: new Container(
                        height: 30,
                        width: 140,
                        child: Text(
                          "Add details",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
