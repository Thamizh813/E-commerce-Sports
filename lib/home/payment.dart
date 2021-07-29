import 'dart:html';

import 'package:bat/home/paymentsuc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MySample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MySampleState();
  }
}

class MySampleState extends State<MySample> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool value = false;
  var Name = '';
  var address = '';
  var phone_no = '0';

  var home_or_office = '';

  final orderdateController = TextEditingController();
  final deliverydateController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    orderdateController.dispose();
    deliverydateController.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    return MaterialApp(
      title: 'Flutter Credit Card View Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    CreditCardForm(
                      formKey: formKey,
                      obscureCvv: true,
                      obscureNumber: true,
                      cardNumber: cardNumber,
                      cvvCode: cvvCode,
                      cardHolderName: cardHolderName,
                      expiryDate: expiryDate,
                      themeColor: Colors.blue,
                      cardNumberDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                        hintText: 'XXXX XXXX XXXX XXXX',
                      ),
                      expiryDateDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Expired Date',
                        hintText: 'XX/XX',
                      ),
                      cvvCodeDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'CVV',
                        hintText: 'XXX',
                      ),
                      cardHolderDecoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Card Holder',
                      ),
                      onCreditCardModelChange: onCreditCardModelChange,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 600,
                        ), //SizedBox
                        Text(
                          'Cash on delivery',
                          style: TextStyle(fontSize: 30.0),
                          textAlign: TextAlign.center,
                        ), //Text
                        SizedBox(width: 10),
                        Checkbox(
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 550,
                      width: 600,
                      color: Colors.white,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              Name = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                Text('enter the data');
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Enter your Name",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              address = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                Text('enter the data');
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Address",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              phone_no = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                print('please enter name');
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Phone no",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            controller: orderdateController,
                            readOnly: true,
                            onTap: () async {
                              var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              orderdateController.text =
                                  date.toString().substring(0, 10);
                            },
                            onChanged: (value) {
                              orderdateController.text = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Date of order",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            readOnly: true,
                            controller: deliverydateController,
                            onTap: () async {
                              var date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              deliverydateController.text =
                                  date.toString().substring(0, 10);
                            },
                            onChanged: (value) {
                              deliverydateController.text = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: " Preferable Delivery date",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              home_or_office = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'please enter name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: "Home or Work place",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w900,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(32))),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        primary: const Color(0xff1b447b),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: const Text(
                          'Proceed',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'halter',
                            fontSize: 14,
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (Name.isEmpty ||
                            address.isEmpty ||
                            orderdateController.text.isEmpty ||
                            home_or_office.isEmpty ||
                            phone_no.isEmpty ||
                            deliverydateController.text.isEmpty) {
                          Fluttertoast.showToast(
                              msg: "Enter all the data",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM_LEFT,
                              timeInSecForIosWeb: 3,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0);
                        } else {
                          users
                              .add({
                                'Name': Name,
                                'address': address,
                                'date_of_order': orderdateController.text,
                                'home_or_office': home_or_office,
                                'phone_no': phone_no,
                                'prefrerable_delivery_date':
                                    deliverydateController.text,
                              })
                              .then((value) => print('details added'))
                              .catchError((error) => print('error in order'));
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResultPage()));
                          if (formKey.currentState!.validate()) {
                            print('valid!');
                          } else {
                            print('invalid!');
                          }
                        }
                      },
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
